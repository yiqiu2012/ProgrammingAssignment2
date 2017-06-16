## Put comments here that give an overall description of what your
## functions do
Matrix invesion is usually a costly computation. It is often beneficial to cache the inverse of a matrix rather than to compute it repeatedly. Below are a pair of function that creates and stores a matrix, compute its inverse, and cache the result so that it can be retreived from memory if needed.
## Write a short comment describing this function
This function creates an invertible matrix that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
        	        x <<- y
        	        inv <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function
This function computes the inverse of the above matrix. If its inverse has already been calculated, retrieve the inverse from cache memory
cacheSolve <- function(x, ...) {
	    inv <- x$getInverse()
	    if(!is.null(inv)) {
	    	        message("getting cached data")
	    	        return(inv)
	    }
	    data <- x$get()
	    inv <- solve(data, ...)
	    x$setInverse(inv)
	    inv
        ## Return a matrix that is the inverse of 'x'
}
