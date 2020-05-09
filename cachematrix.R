## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inverse <<- NULL
  get <- function() x
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  getinverse <- function() inverse
  setinverse <- function(yinverse) inverse <<- yinverse

  list(get=get,
       set=set,
       getinverse=getinverse,
       setinverse=setinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if (!is.null(inverse)) { 
    
    print("Already cached Matrix")
    return(inverse)
  
  } 
    
    cachedmatrix <- x$get()
    inverse <- solve(cachedmatrix)
    x$setinverse(inverse)
  
}
