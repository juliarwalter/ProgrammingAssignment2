## This exercise is very similar to the Programming Assignment 2's example. You need to only substitute some values.

## makeCacheMatrix: creates a special "matrix", which is really a list containing a function to
## 1.	set the value of the matrix
## 2.	get the value of the matrix
## 3.	set the value of the inverse
## 4.	get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinv <- function(inv) i <<- inv
        getinv <- function() i
        
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}

## cacheSolve: Computes the inverse of the special "matrix" and checks if the inverse has already been calculated. 

cacheSolve <- function(x, ...) {

## Return a matrix that is the inverse of 'x'

        i <- x$getinv()
               if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinv(i)
        i
}