## Matrix caclulations can be portentially time consuming. If the values of these caclulations
## are constant, it saves time to store them in a cache and just recall them when needed,
## instead of recomputing. The two functions below cache a matrix and calulate it s inverse.

## This function creates a cache of a matrix.

makeCacheMatrix <- function(x = matrix()) {
             a <- NULL
             set <- function(y) {
                    x <<- y
                    a <<-Null
             }
             get <- function()x
             setinverse <- funcion(solve) a<<- solve
             getinverse <- function() a
             list(set = set,get = get,
                  setinverse =setinverse,
                  getinverse = getinverse)
}


## The function below calculates the inverse of the matrix created above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         a <- x$getinverse()
         if(!is.null(a)) {
           message("getting cached data")
           return(a)
         }
         data <- x$get()
         a <- solve(data, ...)
         x$setsolve(a)
         a
}

