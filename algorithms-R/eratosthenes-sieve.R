## eratosthenes-sieve.R
##
## Find prime numbers by Eratosthenes's sieve
##
## 2015-01-02 YY
## 2016-11-07 YY

sieve <- function(x) {
  ## input: a positive number x
  ## return: vector of prime numbers equal to or smaller than x
  x <- floor(x)
  indicators <- rep(1, x)
  indicators[1] <- 0
  k <- 2
  while (k^2 <= x) {
    i = k
    while (i <= x/k) {
      indicators[k*i] <- 0
      i = i + 1
    }   
    while (TRUE) {
      k = k + 1
      if (indicators[k] != 0) break
    }
  }
 prime <- 1:x
 prime <- prime[as.logical(indicators)]
 return(prime)
}
