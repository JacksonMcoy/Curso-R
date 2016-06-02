# Usando apply

apply(X, 1, function(x) all(!is.na(x) & x > 0))[1]

# Usando bucle for 

row = NA
for(i in 1:nrow(X))
  if (all(!is.na(X[i,]) & X[i,] > 0)) {
    row = i
    break
  }

# Colocar un ejemplo...