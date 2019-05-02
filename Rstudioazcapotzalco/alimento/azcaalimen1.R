library(plotrix)
library(readxl)

azca<-read_xlsx("azcaalimen1.xlsx")
attach(azca)

azca1<-azca[,-1]
azca2<-t(azca1)
colnames(azca2)<- c("Algún menor tuvo poca variedad en sus alimentos", "Algún menor comió menos de lo que debería comer", "A algún menor se le tuvo que servir menos comida", "Algún menor sintió hambre pero no comió","Algún menor comió sólo una vez al día o dejó de comer todo un día", "Algún menor se tuvo que acostar con hambre")


barp(azca2, names.arg = colnames(azca2), cex.axis = 0.7,
     col=rainbow(3), cylindrical = TRUE, ylim = c(0,110), 
     shadow = FALSE, staxx = TRUE, staxy = TRUE,
     legend.pos = list(x=0.10, y=0.30), xlab = "", ylab = "", border = TRUE)


mtext("Limitación de acceso a la alimentación por falta de dinero en los últimos tres meses de los menores de 18 años ", 1, line = 2.8, font = 2, cex = 1.3)
mtext("% porcentaje de la población", 2, line = 2, font = 2, cex = 1.3)
legend("topright", c("si","no" , "no especificado"), bty="n", cex = .55, fill=c("red", "green","blue"))

#legend("topright", colnames(azca1), bty="n", cex = 0.5, fill=c("red","lightskyblue"))

