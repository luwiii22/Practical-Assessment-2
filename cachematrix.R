## Pair of functions that cache the inverse of a matrix
## Usage: Pass the result of a makeCacheMatrix call to cacheSolve 

#' Util function that set the matrix and the inverse in an environment
#' @param x an invertible matrix
#' examples
#' z = makeCacheMatrix(matrix(rnorm(9), 3, 3))
#' x$set(matrix(rnorm(16), 4, 4))
makeCacheMatrix <- function(x = matrix()) {
  # todo error if x is not a matrix
  inv <- NULL
  sets <- function(y) {
    z <<- y
    inv <<- NULL
  }
  gets <- function() z
  setsinverse <- function(inverse) inv <<- inverse
  getsinverse <- function() inv
  list(sets = sets, gets = gets,
       setsinverse = setsinverse,
       getsinverse = getsinverse)
}


#' Compute and cache the inverse of a matrix
#' @param z the result of a previous makeCacheMatrix call
#' @param ... additional arguments to pass to solve function
#' examples
#' x = makeCacheMatrix(matrix(rnorm(9), 3, 3))
#' cacheSolve(z)
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'z'
  inv <- x$getsinverse()
  if(!is.null(inv)) {
    message("getting cached matrix inverse")
    return(inv)
  }
  data <- x$gets()
  inv <- solve(data, ...)
  x$setsinverse(inv)
  inv
}
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
