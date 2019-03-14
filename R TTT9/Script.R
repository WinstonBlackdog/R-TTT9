#Random order fill of magic number square KSW 11/03/2019
# 2 7 6
# 9 5 1
# 4 3 8 

#EXEC sp_execute_external_script @language = N'R'
#,@script =N'_RCODE_'

A = c(0, 0, 0, 0, 0, 0, 0, 0, 0)
#functions
rand <- function() { as.integer(runif(1, min = 1, max = 10)) }
scan <- function(x) {
    flg = 0
    for (n in 1:9) {
        if (x == A[n]) flg = 1 # matched existing number
        }
    if (flg > 0) x = 0 else x
    }
#main code
pt = 1
while (pt < 10) {
    x = scan(rand())
    if (x > 0) {
        A[pt] = x
        pt = pt + 1
    }
}

cat(A, "  \n")

cat(A[1] + A[2] + A[3] + A[4] + A[5] + A[6] + A[7] + A[8] + A[9])

cat("\n end of module one\n")