#Funtion to cache the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {

trix(matrix(rnorm(9), 3, 3))
#cacheSolve() --- compute the inverse of a matrix 
cacheSolve <- function(z, ...) {
  inverse <- z$ginv()
  if(!is.null(inverse)) {
    message("getting cached matrix inverse")
    return(inv)}
  
  data <- z$gets()
  inverse <- solve(data, ...)
  z$sinv(inverse)
  inverse}
