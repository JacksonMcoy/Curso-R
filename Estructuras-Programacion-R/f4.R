# Usando Recursion para definir funciones

# Ejemplo Torres de Hanoi

hanoi <- function(n) if(n<=1) return(1) else return(2*hanoi(n-1)+1)
hanoi(4)
