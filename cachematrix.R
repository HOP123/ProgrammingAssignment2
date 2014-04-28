## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


### Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix function returns lists of 4 following functions 
## set, get setInvers and getInverse

makeCacheMatrix <- function(x) {
	#x <- matrix
	x <- x
	y <- matrix()
	z <- matrix()
	
	## set() set matrix, if matrix is passed, update the stored matris. 
	## If emply argument is passed, keep the last marix 
	set <- function (y=x) {
		x <<- y
		#print(x)
	}
	## get functin prints the matrix
	print(x)
	get <- function(y=x){
		print("In get")
# 		print(class(x))
# 		print(nrow(x))
 		if (nrow(x) == ncol(x)){
 			return (x)
		}
 		else {print("This matrix cannot be inverted.")}	
	}
	
	## setInverse function calculates inverse matrix 
	setInverse <- function(y=x){
# 		print("came to setInverse")
		if(nrow(y) == ncol(y)){
			z <<- solve(y)
# 			print(z)
		}
		else {print("No inverse")}
	}
	
	## getInverse function prints the inverse matrix
	getInverse <- function(){
# 		print("came to getInverse")
# 		print(z)
		return (z)
	}
	return (list(set=set, get=get, setInverse=setInverse, getInverse=getInverse))
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- matrix()
	m <- x$getInverse()
	if(!is.null(m)){
			message("getting cashed data")
			return(m)
	}
	data <- x$get()
	m <- solve(data)
	return (m)
}

