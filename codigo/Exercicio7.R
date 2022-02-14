exercicio7 = read_excel("./dados/exercicio7.xls")
ggplot(exercicio7, aes(x=`Áreas`,y = `Atendimento`, fill=as.factor(`Áreas`))) + 
  geom_bar(stat = "identity")+
  scale_fill_brewer(palette = "Set1") +
  theme(legend.position="none")

