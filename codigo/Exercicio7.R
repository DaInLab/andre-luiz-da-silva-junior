<<<<<<< HEAD
library(readxl)
library(ggplot2)
=======
>>>>>>> 3df6e0c40e816b78848e288334fd200e79ff2b8e
exercicio7 = read_excel("./dados/exercicio7.xls")
ggplot(exercicio7, aes(x=`Áreas`,y = `Atendimento`, fill=as.factor(`Áreas`))) + 
  geom_bar(stat = "identity")+
  scale_fill_brewer(palette = "Set1") +
  theme(legend.position="none")

