library(readxl)
exercicio4 = read_excel("./dados/exercicio4.xls")
x = exercicio4$`Salários`
range(x)

ceiling_dec <- function(x, level=2) round(x + 5*10^(-level-1), level)
floor_dec <- function(x, level=1) round(x - 5*10^(-level-1), level)
AT <- ceiling_dec((max(x)- min(x)))
AT
k <- ceiling_dec((sqrt(length(x))))
k
h <- ceiling_dec(AT/k)+0.165
h
infclass <- min(x)
supclass <- infclass+(k*h)
brk <-seq(infclass,supclass,h)
brk
tabela<-table(cut(x,breaks = brk, right = FALSE))
tabela
hist(x,  
     main = "Sálarios", 
     xlab = "Sálarios em R$", ylab = "Freq. Absoluta", 
     col = c("blue"), 
     border = c("royalblue"),
     breaks = brk,
     right = FALSE,
     axes = FALSE
)
axis(1, at=ceiling_dec(seq(infclass,supclass,h)))
axis(2, at=seq(0,max(tabela),1))


