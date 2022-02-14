library('readxl')
exercicio1 = read_excel("./dados/exercicio1.xls")
x = exercicio1$`Taxas de juros`

#MEDIA ----------------
media = mean(x)
print(media)

#MEDIAna ----------------
mediana = median(exercicio1$`Taxas de juros`)
print(mediana)

#DESVIO PADRÂO ----------------
desvio = sd(x)
print(desvio)

#VARIANCIA ----------------
variancia = var(x)
print(variancia)
#MAXIMO ----------------
maximo = max(x)
print(maximo)

#MINIMO ----------------
minimo = min(x)
print(minimo)

#QUARTIL 1 ----------------
q1 = quantile(x, probs = c(0.25))
print(q1)
#QUARTIL 3 ----------------
q3 = quantile(x, probs = c(0.75))
print(q3)


data <- data.frame(
  Valor=c("Media","Mediana","Máximo","Minimo") ,  
  Media=c(media,mediana,maximo,minimo)
)

library(ggplot2)
g <- ggplot(data,aes(x = Valor,y = Media))
g + geom_bar(width = 0.2,fill = "green",colour = "green", stat= "identity")

data <- data.frame(
  Valor=c("Desvio Padrão","Variancia") ,  
  Media=c(desvio,variancia)
)
g <- ggplot(data,aes(x = Valor,y = Media))
g + geom_bar(width = 0.2,fill = "red",colour = "red", stat= "identity")

boxplot(exercicio1, col = "blue", horizontal = FALSE, xlab = "Gráfico", ylab = "Valores")
abline(h = media, col = "green")
abline(h = mediana, col = "orange")
abline(h=q1, col="red")
abline(h=q3, col="red")
legend(1.2, 2.56, legend = c("Media", "Mediana", "Quartis"), col = c("green", "orange", "red"), lty = 1:1)

