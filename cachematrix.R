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
        matr <- x$getinverse() ##defines inverse matrix with get inverse
        if(!is.null(matr)) { ##if nothing, then return message 
                message("getting cache data")
                return(matr) }
        data <- x$get() ## defines data from get function
        matr <- solve(data, ...) ##redefines matr from the solve function of data
        x$setinverse(matr) ##retrieves set inverse from matr
        matr 
        ## Return a matrix that is the inverse of 'x'
}
