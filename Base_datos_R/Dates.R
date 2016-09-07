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



