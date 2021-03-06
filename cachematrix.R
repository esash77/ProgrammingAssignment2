## This function creates a list that contains four functions:
## set, get, setInv, and getInv. It creates a "matrix" 
## object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

      xinv <- NULL 
      set <- function(y) {
	  x <<- y
	  xinv <<- NULL 
      }

      get <- function() x 
      setInv <- function(inv) xinv <<- inv 
      getInv <- function() xinv 
      list(set = set, get = get,
	       setInv = setInv,
	       getInv = getInv)
  }



## This function computes the inverse of the "matrix" object
## from the previous function. 

 cacheSolve <- function(x, ...) {
      m <- x$getInv() 
      if(!is.null(m)) { 
	  message("getting cached data")
	  return(m) 
      }
      data <- x$get() 
      m <- solve(data) 
      x$setInv(m) 
      m 
  }
  
  
  ## I used outside resources such as chatrooms and message boards to help
  ## write the code for this project.
