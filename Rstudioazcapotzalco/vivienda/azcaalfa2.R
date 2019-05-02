library(plotrix)
library(readxl)

azca<-read_xlsx("azcaanal1.xlsx")
attach(azca)

azca1<-azca[,-1]
azca2<-t(azca1)
colnames(azca2)<- c("15-17 años", "18-24 años", "25-34 años","35-44 años","45-54 años", "55-64 años", "65 años y mas")


barp(azca2, names.arg = colnames(azca2), cex.axis = 0.7,
     col=rainbow(1), cylindrical = TRUE, ylim = c(0,7), 
     shadow = FALSE, staxx = TRUE, staxy = TRUE,
     legend.pos = list(x=0.10, y=0.30), xlab = "", ylab = "", border = TRUE)


mtext("Condición de analfabetismo por edades ", 1, line = 2.8, font = 2, cex = 1.3)
mtext("% porcentaje de la población", 2, line = 2.6, font = 2, cex = 1.3)

#legend("topright", colnames(azca1), bty="n", cex = 0.5, fill=c("red","lightskyblue"))

