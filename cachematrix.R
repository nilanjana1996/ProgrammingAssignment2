## Put comments here that give an overall description of what your
## functions do

## this function can create a special matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  set <- function(matrix) {
    inverse <<- matrix
    inverse <<- NULL
  }
  
  get <- function() {
    inverse
  }
  
  setinverse <- function(inv) {
    inverse <<- inv
  }
  
  getinverse <- function() {
    inverse
  }
  
  list(set = set, get = get, 
       setinverse = setinverse,
       getinverse = getinverse)
}




## function to compute the inverse of cached matrix
cacheSolve <- function(x, ...) {
  matrix <- inverse$getinverse()
  if(!is.null(matrix)) {
    message("getting cached data")
    return(matrix)
  }
  data <- inverse$get()
  matrix <- solve(data, ...)
  inverse$setinverse(matrix)
  matrix
}
