library(readxl)
library(ggplot2)
exercicio5 = read_excel("./dados/exercicio5.xls")
ggplot(exercicio5, aes(x=`Marcas`,y = `Nº pessoas`, fill=as.factor(`Marcas`))) + 
  geom_bar(stat = "identity")+
  scale_fill_brewer(palette = "Set1") +
  theme(legend.position="none")

