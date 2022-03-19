<<<<<<< HEAD
library(readxl)
=======
>>>>>>> 3df6e0c40e816b78848e288334fd200e79ff2b8e
exercicio6 = read_excel("./dados/exercicio6.xls")
x = exercicio6$`Nº pessoas`
y = exercicio6$`Qualidade`



par(mar=c(5,5,4,5))

 
pc = barplot(x,  
             width = 1, space = 0.2, border = NA, axes = F,col = "yellow",
             ylim = c(0, 1.05 * max(x, na.rm = T)), 
             ylab = "Nº de pessoas" , cex.names = 0.7, 
             names.arg = y,
             main = "Diagrama de Pareto")


lines(pc, x, type = "b", cex = 0.7, pch = 19, col="red")

box(col = "black")


axis(side = 2, at = c(0, x), las = 1, col.axis = "grey62", col = "grey62", cex.axis = 0.8)
axis(side = 4, at = c(0, x), labels = paste(c(0, round(x * 100/95)) ,"%",sep=""), 
     las = 1, col.axis = "cyan4", col = "cyan4", cex.axis = 0.8)


 
