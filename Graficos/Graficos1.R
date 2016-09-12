# Ejemplo de Manas A. Pathak: Beginning Data Science with R

# Cargando datos de analisis 

data1 <- read.csv('teams.csv')
attach(data1)

# Dibujamos un diagrama de dispersion

plot(payroll, wins)

# Dividiendo grupos

s1 <- which(league == 'NL')
s2 <- which(league == 'AL')
plot(payroll[s1], wins[s1], xlim = range(payroll), ylim = range(wins), xlab = 'payroll', ylab = 'wins', col = "blue")
points(payroll[s2], wins[s2], pch = 2, col = "dark red")

# Dividamos los datos  en lineas (clasificacion)

plot(payroll, wins, pch = as.numeric(pct >= 0.5))
lines(range(payroll), c(81, 81), lty =2)

# Agregando una leyenda 

legend('bottomleft', c('NL', 'AL'), pch = c(1, 2), title = 'leagues')


# Dibujando un grafico de barras

barplot(by(payroll, league, sum))

par(xpd = T, mar = par()$mar +c(0, 0, 0, 4))
barplot(by(payroll, list(division, league), sum), col = 2:4)
legend(2.5, 8e8, c("Central", "East", "West"), fill = 2:4)

# Dibujando un grafico circular

pie(by(as.numeric(payroll), league, sum))

labels <- c('AL Central', 'AL East', 'AL West', 'NL Central', 'NL East', 'NL West')
pie(as.numeric(by(payroll, list(division, league), sum)), labels)

# Usando la libreria ggplot2

library(ggplot2)
qplot(payroll, wins, col = league, shape =division)

# Grafico de barras usando ggplot2

qplot(league,weight=payroll,ylab='payroll',fill=division, position = 'dodge')

# usando el parametro facet, para dividir el grafico de barra

qplot(division, weight = payroll, ylab = 'payroll', facets = .~league)



