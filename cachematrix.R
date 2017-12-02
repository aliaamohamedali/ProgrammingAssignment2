## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Function defines four methods to use on object mat (matrix to invert)
## A setter & getter for the object itself
## Setter & getter for the objects inverse (Null if not previously computed and set)
## The setters and getter are saved to a list with the matrix object
## Any function can now be called using matrix$name_of_function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(param){
    mat <<- param
    inv <<- NULL
  }
  get <- function() mat
  set_inv <- Function(param){
    inv <<- param
  }
  get_inv <- function() inv
  list(set = set, get = get, set_inv = set_inv, get_inv = get_inv)
}


## Write a short comment describing this function

## Function retrieves inverse by calling mat$get_inv()
## if returned value is NOT null it sends message and returns it
## other wise it computes it, sets it using mat$set_inv(), and finally returns it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- mat$get_inv()
  if(!is.null(inv)){
    message("Returning cached inverse!")
    return(inv)
  }
  data <- mat$get()
  inv <- solve(data)
  mat$set_inv(inv)
  inv
  
}
