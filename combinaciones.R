#Combinación de todas las variables de un data set

#Cruce de columnas 1 a 5 con todas las observaciones
pairs(mtcars[,1:5])

#Cruce de todas las columnas del data set
pairs(mtcars)

#Cruce de columnas seleccionadas
nuevo <- subset(mtcars,select = c(1,6:7,10,11))
pairs(nuevo)

#Cruce de columnas excepto
pairs(mtcars[,-c(0,2,3,4,5,8,9)])

#Aplicación de filtro para buscar
Eficientes <- filter(mtcars,mpg >= 30)
Eficientes
pairs(Eficientes[,1:5])

merc <- mtcars %>% filter(str_detect(model,"Merc"))
merc

pairs(merc[,2:6])