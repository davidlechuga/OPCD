library(plotrix)
library(readxl)

pob<-read_xlsx("azcapob1.xlsx")
attach(pob)

pob1<-pob[,-1]
pob2<-t(pob1)

colnames(pob2)<- c("40-44", "45 a 49", "50 a 54", "55 a 59")
pob2


barp(pob2, names.arg = colnames(pob2), cex.axis = 0.7,
     col=rainbow(2), cylindrical = TRUE, ylim = c(0,19000), 
     shadow = FALSE, staxx = TRUE, staxy = TRUE,
     legend.pos = list(x=0.10, y=0.30), xlab = "", ylab = "", border = TRUE)


mtext("rango de edades", 1, line = 2.8, font = 2, cex = 1.6)
mtext("número de habitantes", 2, line = 2.6, font = 2, cex = 1.6)

legend("topleft", colnames(pob1), bty="n", cex = 0.5, fill=c("red","lightskyblue"))

