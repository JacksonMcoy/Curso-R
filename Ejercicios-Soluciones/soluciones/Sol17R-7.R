# Solucion 17

fq <- function(x) {
  absdev = abs(x - mean(x))
  mean(x[-which(absdev == max(absdev))[1]])
  }