## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   M <- NULL 
  set <- function(y) {
    x <<- y
    M <<- NULL
  }
  get <- function() x
  setinv <- function(solve) M <<- solve(x)
  getinv <- function() M
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

			M <- x$getinv()
			if(!is.null(M)) {
			message("getting cache matrix")
			return(M)
			}
		B <- x$get()
		M <- solve(B)
		x$setinv(M)
		M
}

