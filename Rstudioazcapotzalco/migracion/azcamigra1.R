library(plotrix)
library(readxl)

azca<-read_xlsx("azcamigra1.xlsx")
attach(azca)

azca1<-azca[,-1]
azca2<-t(azca1)
colnames(azca2)<- c("En la misma Alcaldía", "En otra Alcaldía", "No especificado")




barp(azca2, names.arg = colnames(azca2), cex.axis = 0.44,
     col=rainbow(1), cylindrical = TRUE, ylim = c(0,110), 
     shadow = FALSE, staxx = TRUE, staxy = TRUE,
     legend.pos = list(x=0.10, y=0.30), xlab = "", ylab = "", border = TRUE)


mtext("Lugar de residencia actual (marzo 2010)", 1, line = 2.8, font = 2, cex = 1.6)
mtext("% porcentaje de la poblacion", 2, line = 2.6, font = 2, cex = 1.6)

#legend("topright", colnames(azca1), bty="n", cex = 0.5, fill=c("red","lightskyblue"))

