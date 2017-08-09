## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invers <- NULL
set <- function(y){
x <<- y
invers <<- NULL
}
get <- function() x
setinvers <- function() invers <<- solve(x)
getinvers <- function() invers
list(set=set, get=get, setinvers=setinvers, getinvers=getinvers)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invers <- x$getinvers()
if(!is.null(invers)){
	message("getting cached data")
	return(invers)
	}
xget <- x$get()
invers <- solve(xget, ...)
x$setinvers()
invers
}
