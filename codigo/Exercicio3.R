<<<<<<< HEAD
library(readxl)
=======
>>>>>>> 3df6e0c40e816b78848e288334fd200e79ff2b8e
exercicio3 = read_excel("./dados/exercicio3.xls")
x = exercicio3$`Número de filhos`

#MEDIANA ----------------
mediana = median(x)
print(mediana)

#MODA ----------------
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
v <- x
moda = getmode(v)
print(moda)

boxplot(exercicio3, col = "blue", horizontal = FALSE, xlab = "Gráfico", ylab = "Valores")
abline(h = mediana, col = "orange")

legend(1.1, 5, legend = c( "Mediana/Moda"), col = c("orange","yellow"), lty = 1:1)

