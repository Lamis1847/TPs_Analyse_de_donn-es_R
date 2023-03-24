library(FactoMineR)
data=read.table(file.choose(),header=TRUE,sep = "\t",dec = ".")
data 
acp1=PCA(data)
acp1
acp1$eig
acp1$ind
plot.PCA(acp1,select="79")
plot.PCA(acp1,select="110")
res.pca=PCA(data)
plot.PCA(res.pca, axes=c(1,2),choix="ind", habillage=10)
plotellipses(res.pca)
