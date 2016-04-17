# Ejemplo del uso de una funcion en un juego basico

adivina5 <- function(n, fSalida, Fecha_sorteo = "1952-1-17"){
  if(dia_semana(as.Date(Fecha_sorteo)) == "Lunes")
    Fecha_sorteo <- as.Date(Fecha_sorteo) +
        c(0, cumsum(rep(c(3, 4), ceiling((n - 1)/2),
        length.out = n - 1)))
  else
    Fecha_sorteo <- as.Date(Fecha_sorteo) +
        c(0, cumsum(rep(c(4, 3), ceiling((n - 1)/2),
        length.out = n - 1)))

  Maquina <- sample(c("A", "B"), n, replace = TRUE)
  Conjunto <- sample(1:10, n, replace = TRUE)
  Dia <- substr(dia_semana(Fecha_sorteo), start = 1, stop = 1)
  info <- cbind(as.character(Fecha_sorteo), Maquina, Conjunto, Dia)
  A <- replicate(n*10, sample.int(40, 5))
  for(i in 1:n) {
    cat(info[i, ], "\n", file = fSalida, append = TRUE)
    write(A[, (10*i - 9):(10*i)], file = fSalida, ncolumns = 5, append = TRUE)
  }
}
