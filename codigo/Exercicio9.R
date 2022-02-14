library(readxl)
exercicio9 = read_excel("./dados/exercicio9.xls")
x = exercicio9$`Salários`

range(x)

AT <- ceiling((max(x)- min(x)))
AT

k <- AT/2
k
h <- 2
h
infclass <- min(x)
supclass <- infclass+(k*h)
brk <-seq(infclass,supclass,h)
brk
tabela<-table(cut(x,breaks = brk, right = FALSE))
tabela
hist(x,  
     main = "Alturas", 
     xlab = "Alturas em metros", ylab = "Freq. Absoluta", 
     col = c("blue"), 
     border = c("royalblue"),
     breaks = brk,
     right = FALSE,
     axes = FALSE
)
axis(1, at=seq(infclass,supclass,h))
axis(2, at=seq(0,max(tabela),1))


