library(ade4)
data=read.table(file.choose(),header=TRUE)
data
acp=dudi.pca(data)
acp
acp$li
acp$col
plot(acp$li[,1],acp$li[,2])
scatter(acp)

library(FactoMineR)
acp1=PCA(data)
acp1
acp1$eig
acp1$ind