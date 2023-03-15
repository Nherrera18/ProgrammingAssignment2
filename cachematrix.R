## Put comments here that give an overall description of what your
## functions do

## This function creates a special 'matrix' object that can chache its inverse

makeCacheMatrix <- function(x = matrix()) {

}

##This function computes the inverse of the special 'matrix' returned by function above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makevector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
}
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function()m 
        list(set = set, get = get,
             setmean = setmean, 
             getmean = getmean)}

##following function calculates the mean of the special
##'vector' created with the above function. 
##However, it first checks to see if the mean has already
##been calculated. If so, it gets the mean from the cache and skips the computation. 
##Otherwise, it calculates the mean of the data and sets the value of the
##mean in the cache via the setmean function.

cachemean <- function(x,...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message('getting cached data')
                return(m) }
        data <- x$get()
        m <- mean(data,...)
        x$setmean(m)
        m }

## This function creates a special 'matrix' object that can chache its inverse
        makeCacheMatrix <- function(x = matrix()) {
        
        inv <- NULL
        set <- function(y) {
                x <<-y
                inv <<- NULL 
                }
        get <- function () x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function ()inv
        list(set = set,get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

##This function computes the inverse of the special 'matrix' returned by function above
        cacheSolve <- function(x, ...) {
                inv < - x$getinverse()
                if (!is.NULL(inv)) {
                        message('getting cached data')
                        return(inv)
                        }
                data <- x$get()
                inv <- solve(data,...)
                x$setinverse(inv)
                inv
                }
           
