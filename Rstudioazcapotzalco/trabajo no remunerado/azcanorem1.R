library(plotrix)
library(readxl)

azca<-read_xlsx("azcanorem2.xlsx")
attach(azca)

azca1<-azca[,-1]
azca2<-t(azca1)
colnames(azca2)<- c("Atender personas con discapacidad", "Atender a personas enfermas", "Atender a personas sanas menores de 6 años",
"Atender a personas sanas de 6 a 14 años","Atender a personas de 60 años o más","Preparar o servir alimentos para su familia","Limpiar su casa, lavar o planchar la ropa de su familia", "Hacer las compras para la comida o la limpieza")




barp(azca2, names.arg = colnames(azca2), cex.axis = 0.44,
     col=rainbow(1), cylindrical = TRUE, ylim = c(0,50), 
     shadow = FALSE, staxx = TRUE, staxy = TRUE,
     legend.pos = list(x=0.10, y=0.30), xlab = "", ylab = "", border = TRUE)


mtext("Tipo de actividad no remunerada", 1, line = 2.8, font = 2, cex = 1.6)
mtext("% porcentaje de la poblacion", 2, line = 2.6, font = 2, cex = 1.6)

#legend("topright", colnames(azca1), bty="n", cex = 0.5, fill=c("red","lightskyblue"))

