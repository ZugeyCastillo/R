#Ajustando datos de un data set

eficientes <- mean(mtcars$mpg)
eficientes

#Agregamos columna a nuestra data base
mtcars <- mtcars %>% #esto se llama pipe
  mutate(mas_eficientes = ifelse(mpg < eficientes,
                                 "bajo promedio", "en/sobre promedio"))

mas_veloces <- mtcars[mtcars$qsec < 16,]
mas_veloces

#Agregamos columna a nuestra data base
mtcars <- mtcars %>%
  mutate(velocidad_qdm = ifelse(qsec < 16,
                                "menos de 16 seg", "más de 16 seg"))

#Agregamos columna a nuestra data base
mtcars <- mtcars %>%
  mutate(peso_kg = (wt/2)*1000)

#Agregamos columna a nuestra data base
mtcars <- mtcars %>%
  mutate(peso = ifelse(peso_kg < 1500,
                       "livianos", "pesados"))

#Agregamos columna a nuestra data base
orangeec <- orangeec %>%
  mutate(Crecimiento_GDP = ifelse(GDP.Growth.. >= 2.5,
                                  "2.5% o más", "menos de 2.5%"))

#Agregamos columna a nuestra data base
orangeec <- orangeec %>%
  mutate(Anaranjados = ifelse(Creat.Ind...GDP >= 2.5,
                              "Más anaranjados", "Menos anaranjados"))

#Ranking países que más aportan al PIB desde la economía naranja
#arrange es ordenar
#desc es en orden descendiente
orangeec %>%
  arrange(desc(Creat.Ind...GDP))

#%in% busca todo lo que esté en ...
TopNaranjas <- orangeec %>%
  filter(Country %in% c("Mexico", "Panama", "Argentina", "Colombia", "Brazil"))
TopNaranjas

TopNaranjas %>%
  arrange(desc(Creat.Ind...GDP))

mtcars %>%
  arrange(desc(peso_kg))

mas_pesados <- mtcars %>%
  filter(model %in% c("Lincoln Continental", "Chrysler Imperial",
                      "Cadillac Fleetwood", "Merc 450SE"))
mas_pesados

#De otra manera

mtcars_orderby_pesados <- mtcars %>%
  arrange(desc(peso_kg))

#Filtro de los 4 primeros
mas_pesados <- filter(mtcars_orderby_pesados[1:4,])
mas_pesados

#facet_warp quiere decir que haya un cuadrante para cada modelo,
#en este caso 4 cuadrantes
ggplot(mas_pesados, aes(hp,mpg)) +
  geom_point() + facet_wrap(~ model)

ggplot(mtcars, aes(cyl, mpg, size = peso)) + 
  geom_point() + facet_wrap(~ am)

ggplot(mtcars, aes(cyl, mpg, size = peso_kg)) + 
  geom_point() + facet_wrap(~ am)

TopNaranjas <- orangeec %>%
  filter(Country %in% c("Mexico", "Panama", "Argentina", "Colombia",
                        "Brazil", "Paraguay"))
TopNaranjas

ggplot(TopNaranjas, aes(x = Internet.penetration...population,
                        y = Services...GDP, size = GDP.PC)) +
  geom_point() + facet_wrap(~ Country)

ggplot(TopNaranjas, aes(x = Education.invest...GDP,
                        y = Creat.Ind...GDP, size = Unemployment)) +
  geom_point() + facet_wrap(~ Country)

colores <- brewer.pal(9, "Reds")

ggplot(TopNaranjas, aes(x = Internet.penetration...population, y = GDP.PC,
                        fill = Creat.Ind...GDP)) +
  geom_tile() + facet_wrap(~ Country) + 
  scale_fill_gradientn(colors = colores)

#Relaciones sencillas sin tener un data set solo vectores

cajas <- c(1,2,3,4,5,6,7,8)
tiempo <- c(10,9,8,5.8,6,3,1.8,1)

plot(tiempo ~ cajas)

#Scatter plot por ser ambas variables numéricas
plot(orangeec$Services...GDP ~ orangeec$Education.invest...GDP)

#Box plot por ser una variable categórica (discreta) y la otra numérica
#(continua)
mtcars$am <- factor(mtcars$am, levels = c(1,0),
                    labels = c("Manual", "Automático"))
plot(mtcars$mpg ~ mtcars$am)