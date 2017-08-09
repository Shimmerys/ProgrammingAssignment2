## makeCacheMatrix calculates the inverse of a matrix via the solve() function.
## cacheSolve checks if the inverse of the matrix has already been calculated.

## makeCacheMatrix receives a matrix as input and returns its inverse as its output.

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


## cacheSolve receives a matrix as input and returns the inverse of the matrix IF it has not been calculated.
## If the inverse of the matrix has already been calculated, it skips the calculation.

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
