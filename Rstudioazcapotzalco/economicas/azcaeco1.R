library(plotrix)
library(readxl)

azca<-read_xlsx("azcaeco1.xlsx")
attach(azca)

azca1<-azca[,-1]
azca2<-t(azca1)
colnames(azca2)<- c("Trabajadores asalariados", "Trabajadores no asalariados", "No especificado")


barp(azca2, names.arg = colnames(azca2), cex.axis = 0.7,
     col=rainbow(3), cylindrical = TRUE, ylim = c(0,90), 
     shadow = FALSE, staxx = TRUE, staxy = TRUE,
     legend.pos = list(x=0.10, y=0.30), xlab = "", ylab = "", border = TRUE)


mtext("Posición en el Trabajo ", 1, line = 2.8, font = 2, cex = 1.3)
mtext("% porcentaje de la población", 2, line = 2, font = 2, cex = 1.3)
legend("topright", c("total", "Hombres", "Mujeres"), bty="n", cex = .7, fill=c("red", "green", "blue"))

#legend("topright", colnames(azca1), bty="n", cex = 0.5, fill=c("red","lightskyblue"))

