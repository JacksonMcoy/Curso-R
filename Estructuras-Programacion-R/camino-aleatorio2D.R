# Camino aleatorio 2D encerrado en un dominio circular

Rmax = 10
N = 200
coordenadas = matrix(nrow=N+1,ncol=2)
coordenadas[1,1] = coordenadas[1,2] = 0
dosPi = 2*pi
for (i in 2:(N+1)) {
	Rprueba = 1.1*Rmax
	while (Rprueba > Rmax) {
		xo = coordenadas[i-1,1]
		yo = coordenadas[i-1,2]
		theta = runif(1,-dosPi,dosPi)
		pasox = cos(theta)
		pasoy = sin(theta)
		x1 = xo + pasox
		y1 = yo + pasoy
		R = sqrt(x1^2 + y1^2) 
		if (R < Rmax) Rprueba = R
	}
coordenadas[i,1] = coordenadas[i-1,1] + pasox
coordenadas[i,2] = coordenadas[i-1,2] + pasoy
}

plot.new()
par(mar=c(0,0,0,0)) 
plot.window(c(-Rmax,Rmax), c(-Rmax,Rmax), asp=1,bty="n")
polygon(Rmax*cos(2*pi*(0:50/50)), Rmax*sin(2*pi*(0:50/50)))
lines(coordenadas[,1],coordenadas[,2])