#Vector numérico

tiempo_platzi <- c(25,5,10,15,10)
tiempo_lecturas <- c(30,10,5,10,15)
tiempo_aprendizaje <- tiempo_platzi + tiempo_lecturas
tiempo_aprendizaje

#Vector con caracteres
dias_aprendizaje <- c("Lunes","Martes","Miercoles","Jueves","Viernes")
dias_aprendizaje

#Vector booleano
dias_mas_20min <- c(TRUE,FALSE,FALSE,TRUE,TRUE)
dias_mas_20min

#¿Cuánto tiempo adicional estamos teniendo para nuestro aprendizaje en la semana?
total_tiempo_platzi <- sum(tiempo_platzi)
total_tiempo_platzi

total_tiempo_lecturas <- sum(tiempo_lecturas)
total_tiempo_lecturas

total_tiempo_adicional <- total_tiempo_platzi + total_tiempo_lecturas
total_tiempo_adicional

#No se pudo responder a la pregunta mediante vectores porque nos da la
#suma de toda la semana y nosotros buscamos la suma por día de la semana