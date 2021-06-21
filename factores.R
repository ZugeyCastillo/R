#Factores y listas

Nivel_curso <- c("Basico","Intermedio", "Avanzado")

#Esta función nos muestra los primeros n datos de nuestra data base
head(mtcars, n=6)
head(orangeec, n=6)

#Esta función nos muestra los últimos n datos de nuestra data base
tail(mtcars, n=6)
tail(orangeec, n=6)

#Función para ver la estructura y composición de una data base
glimpse(orangeec)

#1:8 indica números del 1 al 8
vector <- 1:8
vector
matriz <- matrix(1:9, ncol=3)
matriz

#Modelos de carros del 1 al 4 de nuestra data base mtcars con todas las
#observaciones
df <- mtcars[1:4,]
df

lista <- list(vector,matriz,df)
lista