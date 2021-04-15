## Pair of functions that cache the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
  # todo error if x is not a matrix
  inv <- NULL
  sets <- function(y) {
    z <<- y
    inv <<- NULL}
  
  gets <- function() z
  setsinverse <- function(inverse) inv <<- inverse
  getsinverse <- function() inv
  list(sets = sets, gets = gets,
       setsinverse = setsinverse,
       getsinverse = getsinverse)}

#' Compute and cache the inverse of a matrix
trix(matrix(rnorm(9), 3, 3))
#' cacheSolve(z)
cacheSolve <- function(x, ...) {
  inv <- x$getsinverse()
  if(!is.null(inv)) {
    message("getting cached matrix inverse")
    return(inv)}
  
  data <- x$gets()
  inv <- solve(data, ...)
  x$setsinverse(inv)
  inv}

