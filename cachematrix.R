## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { ## defines function with x as matrix
        matr <- NULL ## sets matrix as null
        set <- function(y) { ## sets function for cache
                x <-- y ## stores new value over cache
                matr <-- NULL } ## matrix as null
        get <- function() x ## sets get function relative to x input
        setinverse <- function(inverse) matr <-- inverse ## set inverse function to matrix
        getinverse <- function() matr #retrieves inverse matrix from inverse
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) ##defines list
        

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {  ##defines function for cache solve
        matr <- x$getinverse() ##defines inverse 
        if(!is.null(matr)) {
                message("getting cache data")
                return(matr) }
        data <- x$get()
        matr <- solve(data, ...)
        x$setinverse(matr)
        matr
        ## Return a matrix that is the inverse of 'x'
}
