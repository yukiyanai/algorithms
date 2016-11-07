## euclidean-algorithm.R
##
## Find the greatest common divisor (GCD) of
## two integers by Euclidean algorithm
##
## 2015-01-02 YY
## 2016-11-07 YY

euclid_gcd <- function(x, y) {
  ## input: two integers x and y
  ## return: GCD of x and y
  if (x < y) {
    a <- y
    b <- x
  } else {
    a <- x
    b <- y
  } 
  while (TRUE) {
    r <- a %% b
    a <- b
    b <- r
    if (r == 0) break
  }
  return(a)
}
