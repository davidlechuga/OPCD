library(plotrix)
library(readxl)

azca<-read_xlsx("azcaindi.xlsx")
attach(azca)

azca1<-azca[,-1]
azca2<-t(azca1)
colnames(azca2)<- c("Se considera", "Se considera en parte", "No se considera","No sabe","No especificado")


barp(azca2, names.arg = colnames(azca2), cex.axis = 0.7,
     col=rainbow(1), cylindrical = TRUE, ylim = c(0,110), 
     shadow = FALSE, staxx = TRUE, staxy = TRUE,
     legend.pos = list(x=0.10, y=0.30), xlab = "", ylab = "", border = TRUE)


mtext("Autoadscripción indígena ", 1, line = 2.8, font = 2, cex = 1.3)
mtext("% porcentaje de la población", 2, line = 2.6, font = 2, cex = 1.3)

#legend("topright", colnames(azca1), bty="n", cex = 0.5, fill=c("red","lightskyblue"))

