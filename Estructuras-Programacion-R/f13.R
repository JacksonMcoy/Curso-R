# En R, se puede hablar de una lista de funciones


calculo_media <- list(
  base = function(x) mean(x),
  sum = function(x) sum(x) / length(x),
  manual = function(x) {
    total <- 0
    n <- length(x)
    for (i in seq_along(x)) {
      total <- total + x[i] / n
    }
    total
  }
)

x <- runif(1e5)
system.time(calculo_media$base(x))

system.time(calculo_media[[2]](x))

system.time(calculo_media[["manual"]](x))

lapply(calculo_media, function(f) f(x))

lapply(calculo_media, function(f) system.time(f(x)))
