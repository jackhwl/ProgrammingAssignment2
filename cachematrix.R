## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function makeCacheMatrix creates special "matrix", which is really a list containing a function to 
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of Inverse of the matrix
## 4. get the value of Inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
		i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <- function(inv) i <<- inv
        getInverse <- function() i
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function
## The following function cacheSolve inverse the special "matrix" created with the above function. 
## it first checks to see if the inverse matrix has already been calculated. If so, it gets the inverse matrix
## from the cache and skips the computation. Otherwise, it calculates the inverse of the matrix and sets the 
## value of inverse matrix in the cache via the setInverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$setInverse(m)
        i
}
