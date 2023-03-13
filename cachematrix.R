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
