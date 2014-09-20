
# the functions are for calculating the inverse of a matrix


# I have used most of the code from the description of the assignment itself

makeCacheMatrix <- function(m = matrix()) {

    invMatrix <- NULL

	
	#getter setter
    set <- function( matrix ) {
            m <<- matrix
            invMatrix <<- NULL
    }

 
    get <- function() {
    	
    	m
    }

	
	#getter setter for the inverse
    
    setInv <- function(inv) {
        invMatrix <<- inv
    }

    
    getInv <- function() {
        invMatrix
    }

    #put the functions into list
    list(set = set, get = get,
         setInverse = setInv,
         getInverse = getInv)

}




# makecachematrix produces inverse of matrix .If inv is already present in original form then the caching will retrieve the cached data

cacheSolve <- function(x, ...) {
         
    m <- x$getInverse()  #inverse

   
    if( !is.null(m) ) {
             message("getting cached matrix")
             return(m)
    }

    # calculate inverse
    data <- x$get()

   
    m <- calcInv(data) %*% data

   
    x$setInverse(m)

    #here the matrix will be returned
    m
}
