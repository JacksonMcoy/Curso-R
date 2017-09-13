# Distribuciones continuas en R (Basado en el trabajo de Vincent Zoonekynd)

# Simulemos la distribucion uniforme continua en el intervalo [0,1]

round(runif(20), digits=4)

# Distribucion exponencial

curve(dexp(x), xlim=c(0,10), col='blue', lwd=3,
      main='Funcion de distribucion exponencial')

n <- 1000
x <- rexp(n)
hist(x, probability=T,
     col='light blue', ylab = "Densidad", main='Distribucion exponencial')
lines(density(x), col='red', lwd=3)
curve(dexp(x), xlim=c(0,10), col='green', lwd=3, lty=2,
      add=T)

# Distribuciones Gaussiana

curve(dnorm(x), xlim=c(-3,3),ylab = "D-Gaussiana", col='green', lwd=3)
title(main='Funcion de distribucion Gaussiana ')

curve(pnorm(x), xlim=c(-3,3), ylab = "CDF", col='red', lwd=3)
title(main='CDF Gaussiana')

curve(qnorm(x), xlim=c(0,1), ylab = "FQuantil", col='blue', lwd=3)
title(main='Funcion quantil Gaussiana')

n <- 1000
x <- rnorm(n)
hist(x, probability=T, ylab = 'Densidad', col='light blue', main='Distribucion Gaussiana')
lines(density(x), col='red', lwd=3)
curve(dnorm(x), add=T, col='red', lty=2, lwd=3)
legend(par('usr')[2], par('usr')[4], xjust=1, yjust = 1,
       c('Muestral', 'Teorica'),
       lwd=1, lty=c(1,2),
       col='red')


# Distribucion chi-cuadrada

curve(dchisq(x,1), xlim=c(0,5), col='red', lwd=3)
abline(h=0,lty=3)
abline(v=0,lty=3)
title(main="Chi2, un grado de libertad")

curve(dchisq(x,1), xlim=c(0,10), ylim=c(0,.6), col='red', lwd=3)
curve(dchisq(x,2), add=T, col='green', lwd=3)
curve(dchisq(x,3), add=T, col='blue', lwd=3)
curve(dchisq(x,5), add=T, col='orange', lwd=3)
abline(h=0,lty=3)
abline(v=0,lty=3)
legend(par('usr')[2], par('usr')[4], xjust=1,
       c('df=1', 'df=2', 'df=3', 'df=5'),
       lwd=3,
       lty=1,
       col=c('red', 'green', 'blue', 'orange')
)
title(main='Distribuciones Chi^2 ')

# Distribucion T-Students

curve( dt(x,1), xlim=c(-3,3), ylim=c(0,.4), col='red', lwd=2 )
curve( dt(x,5), add=T, col='green', lwd=2 )
curve( dt(x,10), add=T, col='orange', lwd=2 )
curve( dnorm(x), add=T, lwd=3, lty=3 )
title(main="Distribucion T-Students")
xmin <- par("usr")[1]
xmax <- par("usr")[2]
ymin <- par("usr")[3]
ymax <- par("usr")[4]
legend(x = mean(c(xmin,xmax)), y =  mean(c(ymin,ymax)), xjust=1.4, yjust = 0.02,
       c('df=1',  'df=5', 'df=10', 'Gaussiana'),
       lwd=c(2,2,2,2,2), bty = "n" ,
       lty=c(1,1,1,1,3),
       col=c('red', 'blue',  'orange', par("fg")))


# Distribucion de Fisher

curve(df(x,1,1), xlim=c(0,2), ylim=c(0,.8), lty=2)
curve(df(x,3,1), add=T)
curve(df(x,6,1), add=T, lwd=3)
curve(df(x,3,3), add=T, col='red')
curve(df(x,6,3), add=T, lwd=3, col='red')
curve(df(x,3,6), add=T, col='blue')
curve(df(x,6,6), add=T, lwd=3, col='blue')
title(main="Fisher's F")
legend(par('usr')[2], par('usr')[4], xjust=1,bty = "n",
       c('df=(1,1)', 'df=(3,1)', 'df=(6,1)', 
         'df=(3,3)', 'df=(6,3)', 
         'df=(3,6)', 'df=(6,6)'),
       lwd=c(1,1,3,1,3,1,3),
       lty=c(2,1,1,1,1,1,1),
       col=c(par("fg"), par("fg"), par("fg"), 'red', 'red', 'blue', 'blue'))


# Distribucion Log-Normal

curve(dlnorm(x), xlim=c(-.2,5), lwd=3,
      main="Distribucion log-normal")


# Distribucion de Cauchy y Gauss

curve(dcauchy(x),xlim=c(-5,5), ylim=c(0,.5), lwd=3)
curve(dnorm(x), add=T, col='red', lty=2)
legend(par('usr')[2], par('usr')[4], xjust=1.8,bty = "n",
       c('Distribucion de Cauchy', 'Distribucion Gaussiana'),
       lwd=c(3,1),
       lty=c(1,2),
       col=c(par("fg"), 'red'))


# Distribucion de Wiebull

curve(dexp(x), xlim=c(0,3), ylim=c(0,2))
curve(dweibull(x,1), lty=3, lwd=3, add=T)
curve(dweibull(x,2), col='red', add=T)
curve(dweibull(x,.8), col='blue', add=T)
title(main="Funcion de distribucion Weibull ")
legend(par('usr')[2], par('usr')[4], xjust=1,
       c('Exponential', 'Weibull, f=1',
         'Weibull, f=2', 'Weibull, f=.8'),
       lwd=c(1,3,1,1),
       lty=c(1,3,1,1),
       col=c(par("fg"), par("fg"), 'red', 'blue'))


# Distribucion Gamma

curve( dgamma(x,1,1), xlim=c(0,5) )
curve( dgamma(x,2,1), add=T, col='red' )
curve( dgamma(x,3,1), add=T, col='green' )
curve( dgamma(x,4,1), add=T, col='blue' )
curve( dgamma(x,5,1), add=T, col='orange' )
title(main="Funcion de distribucion Gamma ")
legend(par('usr')[2], par('usr')[4], xjust=1,
       c('k=1 (Distribucion exponencial)', 'k=2', 'k=3', 'k=4', 'k=5'),
       lwd=1, lty=1,bty = "n",
       col=c(par('fg'), 'red', 'green', 'blue', 'orange') )

# Distribucion Beta

curve( dbeta(x,1,1), xlim=c(0,1), ylim=c(0,4) )
curve( dbeta(x,2,1), add=T, col='red' )
curve( dbeta(x,3,3), add=T, lty=3, lwd=3, col='green' )
curve( dbeta(x,4,3), add=T, lty=3, lwd=3, col='blue' )
title(main="Distribucion beta")
legend(par('usr')[1], par('usr')[4], xjust=0,
       c('(1,1)', '(2,1)', '(3,3)', '(4,3)' ),
       lty=c(1,2, 3, 1),
       col=c(par('fg'), 'red', 'green', 'blue', 
             'red' ))
