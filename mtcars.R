#data base mtcars

#Nos da informacion sobre la composicion y estructura de nuestra data base
str(mtcars)

#Nos da informacion sobre el origen de nuestra data base
#?mtcars <-- en consola

#Nos da el tipo de dato de una variable de nuestra data base
class(mtcars$vs)

#Convertir el tipo de dato de una variable a otro tipo de dato en nuestra data base
mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)

str(mtcars)