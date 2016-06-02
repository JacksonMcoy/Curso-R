# Solucion 9

apply(x, 1, max)
apply(x, 1, function(x) mean(x[x>0], na.rm=TRUE))
apply(x, 1, function(x) x[c(FALSE, x[-1] > x[-length(x)])][1])