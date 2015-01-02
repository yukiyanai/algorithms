## eratosthenes-sieve.R
##
## Find prime numbers by Eratosthenes's sieve
##
## 01/02/2015 YY

sieve <- function(x){
  ## input: a positive number x
  ## return: vector of prime numbers smaller than x
  x <- floor(x)
  indicators <- rep(1, x)
  indicators[1] <- 0
  k <- 2
  while(k^2 <= x){
    i = k
    while(i <= x/k){
      indicators[k*i] <- 0
      i = i + 1
    }   
    while(TRUE){
      k = k + 1
      if(indicators[k]!=0) break
    }
  }
 prime <- 1:x
 prime <- prime[as.logical(indicators)]
 return(prime)
}
