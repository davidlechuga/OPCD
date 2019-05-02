library(plotrix)
library(readxl)

azca<-read_xlsx("azcasalud.xlsx")
attach(azca)

azca1<-azca[,-1]
azca2<-t(azca1)
colnames(azca2)<- c("IMSS", "ISSTE", "PEMEX, DEFENSA, O MARINA", "SSA", "SERVICIO PRIVADO", "CONSULTORIO DE FARMACIA", "OTRO LUGAR")
azca2

barp(azca2, names.arg = colnames(azca2), cex.axis = 0.7,
     col=rainbow(1), cylindrical = TRUE, ylim = c(0,50), 
     shadow = FALSE, staxx = TRUE, staxy = TRUE,
     legend.pos = list(x=0.10, y=0.30), xlab = "", ylab = "", border = TRUE)


mtext("Institucion de Salud", 1, line = 2.8, font = 2, cex = 1.6)
mtext("% porcentaje de la poblacion", 2, line = 2.6, font = 2, cex = 1.6)

#legend("topright", colnames(azca1), bty="n", cex = 0.5, fill=c("red","lightskyblue"))

