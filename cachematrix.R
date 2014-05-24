## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creates a special "matrix" object within a list that can cache
## its inverse.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
## get the value of the matrix.
        get <- function() x
                
## set the inverse of the matrix.
        setInv <- function(inverse) i <<- inverse
        getInv <- function() i

## produce a list
         list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}

# Example

listA <- makeCacheMatrix()
class(listA)  - shows that listB is a list
class(listA$set) # shows that the elements of the list are functions
listA$set(matrix(c(2, 4, 3, 1, 5, 7, 4, 0, 9), 
                 ncol=3, byrow = TRUE))       #set the matrix
listA$get()


## Write a short comment describing this function

# cacheSolve: This function computes the inverse of the special "matrix"
# returned by makeCacheMatrix above. If the inverse has already been calculated
# (and the matrix has not changed), then the cachesolve should retrieve the
# inverse from the cache.

cacheSolve <- function(x, ...) {
        ## get the inverse of the matrix.
        #       x <- listB
        i <- x$getInv()
        
        ## check if there is the matrix, if yes: print the message.
        if(!is.null(i)) {
                print("getting cached data")
                return(i)
        }
        ## if not: get the inverse of the matrix.
        data <- x$get()
        i <- solve(data, ...)
        ## set the inverse of the matrix.
        x$setInv(i)
        i
        ## Return a matrix that is the inverse of 'x'
}

# Example
cacheSolve(listA)
solve(matrix(c(2, 4, 3, 1, 5, 7, 4, 0, 9), 
             ncol=3, byrow = TRUE))#same result as cacheSolve




