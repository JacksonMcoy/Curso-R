# Funcion para calcular la desviacion en valor absoluto de la media

MAbsDev <- function (x)
{
  AbsDev <- abs(x -mean(x))
  MAD <- mean(AbsDev)
  cat("La desviacion absoluta de la media es:",MAD, "\n")
}
