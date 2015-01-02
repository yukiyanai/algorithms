## compare-sort-time.R
##
## Compare sort algorithms created in R
##
## Compare the speed of sort arigorithms
## written in R
##
## 01/02/2015 YY

## length of vectors to examine
n <- 1000

source("selection-sort.R")
source("bubble-sort.R")
source("insertion-sort.R")
source("quick-sort.R")
## set recursion depth for quick sort
options(expressions=10000)


## When the sorted vector is given
a <- 1:n
system.time(selection.sort(a))
system.time(bubble.sort(a))
system.time(insertion.sort(a))
system.time(quick.sort(a))
system.time(sort(a)) ## R's built in function


## When the vector is in reverse (descending) order
a <- n:1
system.time(selection.sort(a))
system.time(bubble.sort(a))
system.time(insertion.sort(a))
system.time(quick.sort(a))
system.time(sort(a))

## Random order
set.seed(20150102)
a <- sample(a, n)
system.time(selection.sort(a))
system.time(bubble.sort(a))
system.time(insertion.sort(a))
system.time(quick.sort(a))
system.time(sort(a))
