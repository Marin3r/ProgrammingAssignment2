## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creates a special "matrix" object within a list that can cache
## its inverse.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
## get the value of the matrix.
        get <- function() x
                
## set the inverse of the matrix.
        setInv <- function(i) m <<- i
        getInv <- function() m

## produce a list
         list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}

# Example
# matrixA <- matrix(c(2, 4, 3, 1, 5, 7, 4, 0, 9), # the data elements 
#             nrow=3,              # number of rows 
#             ncol=3,              # number of columns 
#             byrow = TRUE)        # fill matrix by rows 
# 
# listB <- makeCacheMatrix(matrixA)
## Write a short comment describing this function

## Computes the inverse on the matrix within the list

cacheSolve <- function(x, ...) {
        ## get the inverse of the matrix.
#         x <- listB
        m <- x$getInv()
        
        ## check if there is the matrix, if yes: print the message.
        if(!is.null(m)) {
                print("getting cached data")
                return(m)
        }
        ## if not: get the inverse of the matrix.
        data <- x$get()
        m <- solve(data, ...)
        ## set the inverse of the matrix.
        x$setInv(m)
        m
        ## Return a matrix that is the inverse of 'x'
}

# Example
# cacheSolve(listB)
# solve(matrixA)                #same result as cacheSolve




