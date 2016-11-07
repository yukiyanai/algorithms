## bubble-sort.R
##
## Bubble sort algorithm in R
##
## An R algorithm to sort the numbers held
## within a vector in acsending order: bubble sort
##
## 2015-01-02 YY
## 2016-11--7 YY

bubble_sort <- function(vector) {
  ## input: vector = a vector of numbers
  ## return: the vector of numbers sorted in ascending order
  
  n <- length(vector)
  k <- 1
  
  while (k < n) {
    i <- n   
    while (i > k) {
      if (vector[i-1] > vector[i]) {
        w <- vector[i-1]
        vector[i-1] <- vector[i]
        vector[i] <- w
      }
      i <- i-1
    }   
    k <- k + 1
  }
  return(vector)
}
