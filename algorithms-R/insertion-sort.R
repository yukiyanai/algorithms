## insertion-sort.R
##
## Insertion sort algorithm in R
##
## An R algorithm to sort the numbers held
## within a vector in acsending order: insertion sort
##
## 01/02/2015 YY

insertion.sort <- function(vector){
  ## input: vector = a vector of numbers
  ## return: the vector of numbers sorted in ascending order
  
  n <- length(vector)
  i <- 2
  
  while(i <= n){
    x <- vector[i]
    k <- i
    while(ifelse(k>1, vector[k-1] > x, FALSE)){
      vector[k] <- vector[k-1] 
      k <- k - 1
    }
    vector[k] <- x
    i <- i + 1
  }
  return(vector)
}
