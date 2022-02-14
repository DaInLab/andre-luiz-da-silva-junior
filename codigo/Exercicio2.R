exercicio2 = read_excel("./dados/exercicio2.xls")
x = exercicio2$`Casas`

#MEDIA ----------------
media = mean(x)
print(media)

#MEDIANA/Q2 ----------------
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

#QUARTIL 1 ----------------
q1 = quantile(x, probs = c(0.25))
print(q1)
#QUARTIL 3 ----------------
q3 = quantile(x, probs = c(0.75))
print(q3)

boxplot(exercicio2, col = "blue", horizontal = FALSE, xlab = "Gráfico", ylab = "Valores")
abline(h = media, col = "green")
abline(h = mediana, col = "orange")
abline(h = moda, col = "yellow")
abline(h=q1, col="red")
legend(1.25, 99, legend = c("Media", "Mediana","Moda/Q3", "Q1"), col = c("green", "orange","yellow","red"), lty = 1:1)
