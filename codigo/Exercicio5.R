<<<<<<< HEAD
library(readxl)
library(ggplot2)
=======
>>>>>>> 3df6e0c40e816b78848e288334fd200e79ff2b8e
exercicio5 = read_excel("./dados/exercicio5.xls")
ggplot(exercicio5, aes(x=`Marcas`,y = `Nº pessoas`, fill=as.factor(`Marcas`))) + 
  geom_bar(stat = "identity")+
  scale_fill_brewer(palette = "Set1") +
  theme(legend.position="none")

