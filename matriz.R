#Matríces

#Def. Las matrices se diferencian de los dataset/dataframes porque
#tienen el mismo tipo de dato.

#row es fila
#Aquí la funcion matrix está recibiendo un vector de dos variables, el número
#de filas
#Aquí la función c() conecta/junta los valores de las dos variables
#En la función bayrow() los datos se colocan por filas (True) o por columnas 
#(FALSE) según se van leyendo
tiempo_matriz <- matrix(c(tiempo_platzi,tiempo_lecturas), nrow = 2, byrow = TRUE)

dias <- c("Lunes","Martes","Miercoles","Jueves","Viernes")
tiempo <- c("tiempo platzi", "Tiempo lectura")

colnames(tiempo_matriz) <- dias
rownames(tiempo_matriz) <- tiempo

tiempo_matriz

#¿Cuánto tiempo adicional estamos teniendo para nuestro aprendizaje en la semana?
colSums(tiempo_matriz)

#Agregar nueva fila a la matriz anterior
#Se agrega un vector que coinicda con el número de columnas de la matriz anterior
Podcast <- c(10,15,30,5,0)
final_matriz <- rbind(tiempo_matriz,Podcast)
final_matriz

#Agregar nueva columna a la matriz anterior
Sabado <- c(8,12,20)
final_matriz <- cbind(final_matriz,Sabado)
final_matriz

#Buscar elemento en una matriz
#El tiempo en minutos que le dedicamos los viernes a platzi es
#[Fila,Columna] o bien [Row,Col]
final_matriz[1,5]