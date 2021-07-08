journalists <- read.csv("../Documents/copia general.csv")
str(journalists)
colnames(journalists)

#Muertes por año

table(journalists$year)
prop.table(journalists$year)
plot(table(journalists$year))
plot(prop.table(journalists$year))
  
barplot(table(journalists$year), xlab = "Year", ylab = "Freq Rel", 
        main = "Killed per year", col=rainbow(7))

which.max(table(journalists$year))


year_killed <- as.data.frame(journalists$year)
prop.table(year_killed)


#Muertes por pais

table(journalists$country_killed)
barplot(table(journalists$country_killed), main = "Killed per country")

which.max(table(journalists$country_killed))


# Muertes por género

table(journalists$sex)
barplot(table(journalists$sex), 
        legend.text = T, xlab = "Men and Women", main = "Journalists by gender", 
        col = c("Pink", "lightblue"), horiz = T)

pie(table(journalists$sex), main = "Men and Women")


# Intento de dos variables

tabla2 <- table(journalists$year,journalists$country_killed)
tabla2
barplot(tabla2)


plot(table(journalists$year, journalists$sex), 
     main = "M&W YoY", col = c("Pink", "lightblue"))


library(ggplot2)



