#Análisis de redes en R

library(EconGeo)

#Cargar data
EL = read.csv("https://raw.githubusercontent.com/PABalland/ON/master/lesmis-el.csv")

#Ver encabezado
head(EL)

#Transformar a matriz
Mm=get.matrix(EL)

library(igraph)
g=graph_from_data_frame(d=EL, directed=F)
g
plot(g)

EL$Weight=NULL
head(EL)

install.packages("networkD3")
library(networkD3)
simpleNetwork(EL)
