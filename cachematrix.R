#This funtion is to cache the inverse of a matrix
makeCacheMatrix <- function(z = matrix()) {

#This function is to create a random 3x3 matrix
trix(matrix(rnorm(9), 3, 3))
  
#cacheSolve() --- this function is to compute for the inverse of a matrix 
cacheSolve <- function(z, ...) {
  inverse <- z$ginv()
  
  data <- z$sets()
  inverse <- solve(data, ...)
  z$sinv(inverse)
  inverse}
#Thank you
