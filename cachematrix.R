## Programming Asignment 2 - Cache in R [Syed Hasan]

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function uses lexical scoping to declare global variables
## and then assigns local values as when needed
## using R function Solve to return the INverse matrix


  makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
      x<<-y
      m<<-NULL
    }
    get<-function() x
    setmatrix<-function(solve) m<<- solve
    getmatrix<-function() m
    list(set=set, get=get,
         setmatrix=setmatrix,
         getmatrix=getmatrix)
  }
 


## Write a short comment describing this function
  ## Added code for cacheSolve function 
  ## check if the passed matrix is NULL or not 
  ## if its NOT  NULL then call then retruned the Cached value
  ## Pass the created Matrix in the orignal makeCacheMatrix func to return inverse values
  
  cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
  }
