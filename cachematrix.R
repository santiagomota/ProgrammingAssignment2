## Santiago Mota
<<<<<<< HEAD

## Write the following functions:
      
## makeCacheMatrix: This function creates a special "matrix" object that can 
## cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve the inverse 
## from the cache.
## Computing the inverse of a square matrix can be done with the solve function 
## in R. For example, if X is a square invertible matrix, then solve(X) returns 
## its inverse.

## For this assignment, assume that the matrix supplied is always invertible.

## Put comments here that give an overall description of what your
## functions do
=======
>>>>>>> origin/master

## Write the following functions:

## makeCacheMatrix: This function creates a special "matrix" object that can 
## cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve the inverse 
## from the cache.
## Computing the inverse of a square matrix can be done with the solve function 
## in R. For example, if X is a square invertible matrix, then solve(X) returns 
## its inverse.

## For this assignment, assume that the matrix supplied is always invertible.

## In order to make this function, we use the makeVector function of the example,
## but changing the mean function to solve. As in the example, the function
## solve the inverse of the matrix and store it to use later in cacheSolve 
## function

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) m <<- solve
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse) 
}


## In order to make this function, we use the cachemean function of the example,
## but changing the mean function to solve. As in the example, the function
## first analyze if getinverse is null, using the cache data or if not, 
## calculate it with x$get

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}

## Example
## We create a 2x2 matrix in variable temp
## temp <- matrix(1:4, 2, 2)
## temp
## We calcule the inverse of the matrix
## solve(temp)
## temp2 <- makeCacheMatrix(temp)
## The function obtain same value
## cacheSolve(temp2)
## cacheSolve(temp2)
## Another one
## temp3 <- matrix(runif(4000000), 2000, 2000)
## temp4 <- makeCacheMatrix(temp3)
## solve(temp3)
## cacheSolve(temp4)
## cacheSolve(temp4)
