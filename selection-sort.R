## selection-sort.R
##
## Simple selection sort algorithm in R
##
## An R algorithm to sort the numbers held
## within a vector in acsending order: simple sort
##
## 01/02/2015 YY

selection.sort <- function(vector){
  ## input: vector = a vector of numbers
  ## return: the vector of numbers sorted in ascending order
  
  n <- length(vector)
  i <- 1
  
  while(i < n){
    indexMin <- i
    k <- i + 1 
    while(k < n+1){
      if(vector[k] < vector[indexMin]) indexMin <- k
      k <- k + 1      
    }   
    w <- vector[i]
    vector[i] <- vector[indexMin]
    vector[indexMin] <- w    
    i <- i + 1
  } 
  return(vector)
}



