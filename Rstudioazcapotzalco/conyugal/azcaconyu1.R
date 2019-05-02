library(plotrix)
library(readxl)

azca<-read_xlsx("azcaconyu1.xlsx")
attach(azca)

azca1<-azca[,-1]
azca2<-t(azca1)
colnames(azca2)<- c("Total", "12-17 años", "18-59 años", "60 ños y mas")


barp(azca2, names.arg = colnames(azca2), cex.axis = 0.7,
     col=rainbow(5), cylindrical = TRUE, ylim = c(0,110), 
     shadow = FALSE, staxx = TRUE, staxy = TRUE,
     legend.pos = list(x=0.10, y=0.30), xlab = "", ylab = "", border = TRUE)


mtext("Situación conyugan por edades ", 1, line = 2.8, font = 2, cex = 1.3)
mtext("% porcentaje de la población", 2, line = 2, font = 2, cex = 1.3)
legend("topright", c("soltera", "casada", "en unión libre", "separada,divorciada o viuda", "no especificado"), bty="n", cex = .55, fill=c("red", "yellow", "green","blue","purple"))

#legend("topright", colnames(azca1), bty="n", cex = 0.5, fill=c("red","lightskyblue"))

