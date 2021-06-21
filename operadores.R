#Operadores

#¿Qué carros tienen menos de determinados cilindros?
#[Database $ Columna Operador Numero ,] <-- la "coma" indica búsqueda en todas
#las observaciones
mtcars[mtcars$cyl<6,]

#¿Qué países tienen un PIB per cápita mayor o igual a 15k dls?
orangeec[orangeec$GDP.PC>=15000,]

#¿Qué países tienen un aporte a su PIB a través de las industrias creativas
#o la economía naranja menor o igual a 2% de ese mismo pais?
orangeec[orangeec$Creat.Ind...GDP<=2,]

#Creamos un nuevo data base a partir del original
neworangeec <- subset(orangeec, Internet.penetration...population>80 & 
                      Education.invest...GDP>=4.5)

#Vista de nuestra nueva data base desde la variable de economía naranja
#Select = busca columnas>
neworangeec <- subset(orangeec, Internet.penetration...population>80 & 
                      Education.invest...GDP>=4.5,
                      select = Creat.Ind...GDP)
neworangeec

#Cambiar nombre de columna de nuestra data base
#Aquí se ocupa la librería plyr la cual debe estar palomeada en Packages
rename(orangeec,c("Creat.Ind...GDP"="AporteEcNja"))