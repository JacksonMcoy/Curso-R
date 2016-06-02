# Ejemplo de las estructuras de R


var1 <- c(1, 2.5, 4.5)
int_var <- c(1L, 16L, 10L)
log_var <- c(TRUE, FALSE, T, F)
chr_var <- c("python", "R")

x <- list(1:3, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9))
str(x)

x1 <- list(list(list(list())))
str(x1)

structure(1:10, my_attribute = "Este es un vector")

a <- matrix(1:6, ncol = 3, nrow = 2)
a
b <- array(1:12, c(2, 3, 2))
b

# Data frames

df <- data.frame(x = 1:3, y = c("a", "b", "c"), stringsAsFactors = FALSE)
str(df)

typeof(df)
class(df)

is.data.frame(df)

cbind(df, data.frame(z = 3:1))
rbind(df, data.frame(x = 10, y = "z"))
