#EDA: Scatter Plot

#x <-- variable independiente, y <-- variable dependiente

#Función plot(database $ eje y relación con data base $ eje x)
plot(mtcars$mpg~mtcars$cyl,
     xlab = "Cilindros", ylab = "Millas por galón",
     main = "Cilindros vs Millas por galón")

plot(mtcars$mpg~mtcars$hp,
     xlab = "Caballos de fuerza", ylab = "Millas por galón",
     main = "Caballos de fuerza vs Millas por galón")

plot(orangeec$Unemployment~orangeec$Education.invest...GDP,
     xlab = "Inversión en educación %PIB", ylab = "Desempleo",
     main = "Inversión en educación vs Desempleo")

plot(orangeec$GDP.PC~orangeec$Creat.Ind...GDP,
     xlab = "Aporte de economía naranja al %PIB", ylab = "PIB per cápita",
     main = "Aporte de economía naranja al %PIB vs PIB per cápita")

#Scatter plot con package ggplot2
ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point() +
  labs(x= "Caballos de fuerza", y = "Millas por galón", 
  title = "Relación caballos de fuerza y millas por galón") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x = wt, y = hp)) + geom_point() +
  labs(x= "Peso", y = "Caballos de fuerza", 
       title = "Relación Peso (libras) - Potencia") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#Gráfico con burbujas de colores y sin quitar fondo gris
ggplot(mtcars, aes(hp,qsec)) + geom_point(aes(color = am, size = cyl)) +
  labs(x = "Caballos de fuerza", y = "Tiempo en 1/4 de milla",
       title = "Caballos - velocidad según cilindraje y tipo de caja")

ggplot(orangeec, aes(Internet.penetration...population,Creat.Ind...GDP)) +
  geom_point(aes(color = factor(Strong_economy), size = GDP.Growth..)) +
  labs(x = "Penetración de internet", y = "Aporte economía naranja al PIB",
       title = "Internet y aporte de economía naranja según economía y
       crecimiento PIB")

ggplot(orangeec, aes(Education.invest...GDP,Unemployment)) +
  geom_point(aes(color = factor(Strong_economy), 
                 size = X..pop.below.poverty.line)) +
  labs(x = "Inverión de educación (%) PIB", y = "Desempleo",
       title = "Inverión de educación como porcentaje del PIB y desempleo")

#Scatter Plot interactivo
#Seleccionar librería devtools, ggplot2 y dplyr
#require(plotly) <-- en consola
grafico <- ggplot(orangeec, aes(Internet.penetration...population,
                                Creat.Ind...GDP, label = rownames(orangeec))) +
  geom_point() + 
  labs(x = "Penetración de internet", y = "Aporte de economía naranja",
       title = "Penetración internet y aporte economía naranja")
grafico
p = ggplotly(grafico)
p

#EDA: Histograma

#Gráfico sin package
qplot(mtcars$hp,
      geom = "histogram",
      xlab = "Caballos de fuerza",
      main = "Carros según caballos de fuerza")

#Gráfico con package ggplot2 y cambio de fondo
ggplot(mtcars, aes(x = hp)) +
  geom_histogram() +
  labs(x = "Caballos de fuerza", y = "Cantidad de carros",
       title = "Caballos de fuerza en carros seleccionados") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#Gráfico con package ggplot2 y cambio en grosor de las barras
ggplot(mtcars, aes(x= hp)) +
  geom_histogram(binwidth = 30) +
  labs(x = "Caballos de fuerza", y = "Cantidad de carros",
       title = "Caballos de fuerza en carros seleccionados") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#Gráfico con package ggplot2 y cambio en grosor, color y rango de las barras
ggplot() + geom_histogram(data = mtcars,
                          aes(x = hp), fill = "green", color = "blue",
                          binwidth = 20) +
  labs(x = "Caballos de fuerza", y = "Cantidad de carros",
       title = "Caballos de fuerza en carros seleccionados") +
  xlim(c(80,280)) +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot() + geom_histogram(data = orangeec,
                          aes(x = GDP.PC), fill = "orange", color = "red",
                          binwidth = 2000) +
  labs(x = "PIB per cápita", y = "Cantidad de países",
       title = "PIB per cápita en LATAM") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot() + geom_histogram(data = orangeec,
                          aes(x = Creat.Ind...GDP), fill = "pink",
                          color = "purple", binwidth = 1) +
  labs(x = "Aporte economía naranja al PIB %", y = "Cantidad de países",
       title = "Contribución economía naranja al PIB en LATAM") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot() + geom_histogram(data = orangeec,
                          aes(x = Internet.penetration...population),
                          fill = "light blue", color="black",
                          binwidth = 5) +
  labs(x = "Penetración de internet (%) por población", y = "Cantidad de países",
       title = "Penetración de internet en LATAM") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot() + geom_histogram(data = orangeec,
                          aes(x = Internet.penetration...population),
                          fill = "light blue", color="black",
                          binwidth = 5) +
  scale_x_continuous(breaks = seq(40, max(100), 5)) +
  labs(x = "Penetración de internet (%) por población", y = "Cantidad de países",
       title = "Penetración de internet en LATAM") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#EDA: Box Plot

boxplot(mtcars$hp,
        ylab = "Caballos de fuerza",
        title = "Caballos de fuerza en carros mtcars")

#El gráfico boxplot necesita de una variable categorica en x y numérica en y
ggplot(mtcars, aes(x = as.factor(cyl), y = hp, fill = cyl)) +
  geom_boxplot(alpha = 0.4) + labs(x = "Cilindros", y = "Caballos de fuerza",
                        title = "Caballos de fuerza vs cilindros en mtcars") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x = am, y = mpg, fill = am)) + geom_boxplot() +
  labs(x = "Tipo de caja", y = "Millas por galón",
       title = "Millas por galón según el tipo de caja") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#?mtcars <-- en consola

mtcars$am <- factor(mtcars$am, levels = c(1,0),
                    labels = c("Manual", "Automático"))

ggplot(mtcars, aes(x = am, y = mpg, fill = am)) + geom_boxplot() +
  labs(x = "Tipo de caja", y = "Millas por galón",
       title = "Millas por galón según el tipo de caja") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#Clasificación PIB per cápita por paises

#Promedio PIB per cápita (dlrs) en LATAM
economia <- mean(orangeec$GDP.PC)
economia

#Seleccionar librería dplyr
orangeec <- orangeec %>%
  #Se crea una nueva columna (variable)
  #La función mutate() hace que nuestra data base cambie, se agrande
  #Designamos el nombre de nuestra nueva variable con la función ifelse()
  #dependiendo del promedio PIB per cápita (dlrs) en LATAM
  mutate(Strong_economy = ifelse(GDP.PC < economia,
                                 "Por debajo del promedio PIB per cápita",
                                 "Por arriba del promedio PIB per cápita"))

ggplot(orangeec, aes(x = Strong_economy, y = Creat.Ind...GDP,
                     fill = Strong_economy)) + 
  geom_boxplot(alpha = 0.4) +
  labs(x = "Tipo de país", y = "Aporte economía naranja al PIB",
       title = "Aporte economía naranja al PIB LATAM con alto y bajo PIB per 
       cápita") + 
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(orangeec, aes(x = Strong_economy, y = Internet.penetration...population,
                     fill = Strong_economy)) + 
  geom_boxplot(alpha = 0.4) +
  labs(x = "Tipo de país", y = "Penetración de internet (%)",
       title = "Penetración de internet en LATAM con alto y bajo PIB per
        cápita") + 
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
