## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# @return matrix that caches its reverse

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y){
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setInverse <- function(inversedMatrix) inverse <- inversedMatrix
    getInverse <- function() inverse

    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
# This functions tries to return cached value of input matrix inverse, or calculates and caches it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- x$getInverse()
    if (!is.null(inverse)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    inverse <- solve(data)
    x$setInverse(inverse)

    inverse
}
