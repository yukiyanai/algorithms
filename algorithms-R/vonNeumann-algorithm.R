## vonNeumann-algorithm.R
## Simulate a "fair" coin using a biased coin
## 2016-11-07 Yuki Yanai

vn_coin <- function(p = .9) {
  ## p: prob of Head of the biased coin
  
  # check input
  if (p <= 0 | p >= 1) stop(message = 'p must be in (0, 1)')
  
  while (TRUE) {
    x <- rbinom(2, size = 1, prob = p)
    if (x[1] == 1 & x[2] ==0) return(x[1])
      else if (x[1] == 0 && x[2] == 1) return(x[1])
  }
}

