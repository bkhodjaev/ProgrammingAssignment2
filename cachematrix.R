## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The first function creates a matrix and contains a function to set the the matirix, to get the matrix,to set inverse matrix, to get inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## This checks if the inverse matrix has been already calculated and if not calculates the inverse matrix and sets the inverse matrix in the cache via the setinverse function.
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
