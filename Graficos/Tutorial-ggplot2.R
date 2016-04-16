# Tutorial de ggplot2

library(ggplot2)
msleep
head(msleep)

a <- ggplot(data = msleep, aes(x = bodywt, y = sleep_total))
a <- a + geom_point()
a <- a + xlab("") + ylab("")  + ggtitle("Datos  de algunas especies")
a

# Podemos guardar el dibujo usando

ggsave("dormir_animales.png", plot = a, width = 4, height = 4)

# Dividir el dato de diferentes maneras

a <- ggplot(data = msleep, aes(x = bodywt, y =sleep_total, col =vore))
a <- a + geom_point()
a <- a +xlab("") + ylab("") + ggtitle("Datos de algunas especies")
a

# Transformando variables

a <- ggplot(data = msleep, aes(x = log(bodywt), y = sleep_rem/sleep_total, col =vore))
a <- a + geom_point()
a <- a + xlab("Log ") + ylab("") + ggtitle("Datos de algunas especies") + scale_color_discrete(name = "Level")
a


# Podemos cambiar opciones con llamadas a geom

a <- ggplot(data = msleep, aes(x = log(bodywt), y = sleep_rem/sleep_total, col =vore))
a <- a + geom_point(size = 3)
a <- a + xlab("Log ") + ylab("") + ggtitle("Datos de algunas especies") + scale_color_discrete(name = "Level")
a

# Dividamos la manera en que dividimos los datos
# Facets: facet_wrap

a <- ggplot(data = msleep, aes(x = log(bodywt), y = sleep_rem/sleep_total))
a <- a + geom_point(size = 5)
a <- a + facet_wrap(~vore)
a <- a + xlab("Log ") + ylab("") + ggtitle("Datos de algunas especies")
a

#Usando facet_grid


a <-ggplot(ddata = msleep, aes(x = log(bodywt), y = sleep_rem/sleep_total))
a <- a + geom_point(size = 2)
a <- a + facet_grid(conservation~ vore)
a <- a + xlab("Log") + ylab("REM") + ggtitle("Datos de algunas especies")
a



economics
head(economics)

a <-ggplot(data = economics, aes(x = date, y = unemploy))
a <- a + geom_line()
a


# Podemos agregar transformaciones estadisticas a esta serie

a <- ggplot(data = economics, aes(x = date, y = unemploy))
a <- a + geom_line()
a <- a + geom_smooth()
a

