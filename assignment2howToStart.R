# 1. Fork the GitHub repository at https://github.com/rdpeng/ProgrammingAssignment2 
# to your own account (on GitHub).
# 2. Clone the forked repository to your computer using git and start editing the R 
# file called cachematrix.R on your local machine:
        ## Put comments here that give an overall description of what your
        ## functions do
#         
## Write a short comment describing this function
#         makeCacheMatrix <- function(x = matrix()) {
#         }
# 
## Write a short comment describing this function
# cacheSolve <- function(x, ...) {
# Return a matrix that is the inverse of 'x'
# }
# 3. Implement the functions makeCacheMatrix() and cacheSolve(): 
#    makeCacheMatrix: This function creates a special "matrix" object that can cache
# its inverse. cacheSolve: This function computes the inverse of the special "matrix"
# returned by makeCacheMatrix above. If the inverse has already been calculated (and 
# the matrix has not changed), then the cachesolve should retrieve the inverse from the
# cache.
# Here you can take the given makeVector() and cachemean() functions from the example as
# foundation and just adapt the code to do the requested features on a matrix. All you need
# to know about matrices and its inverse is that B=solve(A) simply calculates the inverse
# of a given regular matrix A (A must be an invertible (nxn)-matrix) and then make use of 
# solve() instead of mean() in the vector example.
# A = regular, invertible (nxn)-matrix
# B = solve(A) returns inverse of A
# Matrix operation:
#         y, x vectors
# y = A %*% x (matrix multiplication, similar to solving a system of equations in y1..yn and
# x1..xn
#              x = B %*% y (B = solve(A) = inverse of A)
#              B%*%A = identity matrix (ones on the diagonal)  
# 4. Write your code in a well-formatted and easily readable style.
# 5. Make use of comments to the help understand your code. 
# 6. Read grading instructions at the bottom of the assignment to understand what aspects of 
# your code are getting graded and make sure that your code complies with those.
# 7. Use git to properly commit your changes and finally push your solution to your
#              forked repository on your GitHub account.
# 8. Submit the link to your GitHub repository with the completed R code for the assignment.