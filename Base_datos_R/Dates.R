# Uso de as.Date, package chron y las clases POSIXct, POSIXlt

as.Date('2015-12-3')
as.Date('2016/08/12')

as.Date('2/16/2016', format = '%m/%d/%Y')
as.Date('May 22, 1983', format = '%B %d %Y')

as.Date('22May16', format = '%d%b%y')


# Los objetos Dates son almacenados como numeros. Uso de as.numeric

date1 <- as.Date('2/16/2016', format = '%m/%d/%Y')
ndate1 <- as.numeric(date1)
ndate1
class(ndate1) = 'Date'
ndate1

# Uso de wwekdays,  months, days y quarters

bdays = c(tukey=as.Date('1915-06-16'),fisher=as.Date('1890-02-17'), 
          cramer=as.Date('1893-09-25'), kendall=as.Date('1907-09-06'))

weekdays(bdays)

# El paquete chron 

library(chron)

tm1.c <- as.chron("1983-05-25 23:55:26")
tm1.c

tm2.c <- as.chron("10/03/13 08:32:07", "%m/%d/%y %H:%M:%S")
tm2.c

# Extraigamos solo las fecha y cakculemos la diferencia de tiempos

dates(tm1.c)
tm2.c - tm1.c


dt1 = c("2002-06-09 12:45:40","2003-01-29 09:30:40",
           "2002-09-04 16:45:40","2002-11-13 20:00:40",
           "2002-07-07 17:30:40")
dt2 = t(as.data.frame(strsplit(dt1,' ')))
row.names(dt2) = NULL
t1 = chron(dates=dt2[,1],times=dt2[,2],
                 format=c('y-m-d','h:m:s'))
t1