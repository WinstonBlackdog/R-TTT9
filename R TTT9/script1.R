A = c(0, 0, 0, 0, 0, 0, 0, 0, 0)
functions
rand <- function() { as.integer(runif(1, min = 1, max = 10)) }
scan <- function(x) {
    flg = 0
    for (n in 1:9) {
        if (x == A[n]) flg = 1 # matched existing number
        }
    if (flg > 0) x = 0 else x
    }