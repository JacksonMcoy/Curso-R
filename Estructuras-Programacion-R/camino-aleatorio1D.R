 # Camino aleatorio 1-dim con longitud de paso constante(lento)

camino_aleatorio = function(N) {
	camino = rep(0,N+1)
	for (i in 2:(N+1)) {
		x = runif(1)
		if (x <= 0.5) camino[i] = camino[i-1]-1 else camino[i] = camino[i-1]+1
	}
	return(camino[N])
}

multicaminos = c()
for (k in 1:100) {
	multicaminos[k] = camino_aleatorio(100)
}
mean(multicaminos)
sd(multicaminos)
par(mar=c(4,4,1.5,1.5),mex=.8,mgp=c(2,.5,0),tcl=0.3) 
hist(multicaminos)