#Correlación

cor(mtcars[,2:6])

cor(nuevo)

cor(merc[,2:6])

pairs(orangeec[,2:6])

pairs(orangeec[,5:10])

#Relación de variables no consecutivas
nuevods <- subset(orangeec,select = c(5,6,10,11,12,13))
nuevods

pairs(nuevods)

#¿Las correlacies existen?
cor(orangeec[,2:6])

#Solución de NA's
cor(orangeec[,2:6], use = "complete.obs")

cor(orangeec[,5:10], use = "complete.obs")

cor(nuevods, use = "complete.obs")

#Resumen estadístico de un data set
summary(mtcars)

#Coeficiente de variación =
#(Desviación estandar)/(x barra) * 100%
#El coeficiente es óptimo hasta el 25% esto quiere decir que los datos son
#homogéneos, son parecidos

desvest <- sd(mtcars$mpg)
prom <- mean(mtcars$mpg)

coefvar <- (desvest/prom)*100
coefvar #<-- en %

desvest <- sd(orangeec$Internet.penetration...population)
prom <- mean(orangeec$Internet.penetration...population)

coefvar <- (desvest/prom)*100
coefvar #<-- en %

summary(orangeec)

#Remover valores nulos
#na.rm es remove
mean(orangeec$Creat.Ind...GDP)
prom <- mean(orangeec$Creat.Ind...GDP, na.rm = TRUE)

sd(orangeec$Creat.Ind...GDP)
desvest <- sd(orangeec$Creat.Ind...GDP, na.rm = TRUE)

coefvar <- (desvest/prom)*100
coefvar #<-- en %