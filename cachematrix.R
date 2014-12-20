## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	cachedMatrixInverse <- NULL
	set <- function(y) {
		x <<- y
		matrixInvematrixInverseCacherse <<- NULL
	}
	get <- function() x
	setInverse <- function(matrixInverse) cachedMatrixInverse <<- matrixInverse
	getInverse <- function() cachedMatrixInverse
	list(set = set, get = get,
		 setInverse = setInverse,
		 getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	matrixInverse <- x$getInverse()
	if(!is.null(matrixInverse)) {
		message("getting cached data")
		return(matrixInverse)
	}
	data <- x$get()
	matrixInverse <- solve(data, ...)
	x$setInverse(matrixInverse)
	matrixInverse
}
