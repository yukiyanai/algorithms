## quick-sort.R
##
## Quick sort algorithm in R
##
## An R algorithm to sort the numbers held
## within a vector in acsending order: quick sort
##
## 01/02/2015 YY

quick.sort <- function(vector){
  ## input: vector = a vector of numbers
  ## return: the vector of numbers sorted in ascending order

  left <- 1
  right <- length(vector)
  i <- left + 1
  k <- right
  
  while(i < k){
    while(vector[i] < vector[left] & i < right) i <- i + 1
    while(vector[k] >= vector[left] & k > left) k <- k - 1
    if(i < k){
      w <- vector[i]
      vector[i] <- vector[k]
      vector[k] <- w
    }
  }  
  if(right-left != 1 | vector[left] > vector[k]){
    w <- vector[left]
    vector[left] <- vector[k]
    vector[k] <- w
  }
  
  if(left < k-1){
    vector[left:(k-1)] <- quick.sort(vector[left:(k-1)]) 
  }
  if(k+1 < right){
    vector[(k+1):right] <- quick.sort(vector[(k+1):right])
  }
  return(vector)
}
