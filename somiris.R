# package kohonen pour les fonctionalites des som
library(kohonen)
iris
#les SOM manipule que des données numérique,on enlève la 19ème colone qui représente les classes
data_train <- iris[,-5]
# mettre les données sous forme de matrice
# aussi centrer et normaliser les données pour leur donner les même importance
data <- as.matrix(scale(data_train))
# Créer la grille som : on définie sa taille et la topologie
som_grid <- somgrid(xdim = 8, ydim=8, topo="hexagonal")
# algorithm SOM
som <- som(data,grid=som_grid,rlen=100,alpha=c(0.05,0.01),keep.data = TRUE)
summary(som)
# Pour savoir si le nombre d'itérations est suffisant
plot(som, type="changes")
# afficher nombre d'éléments par noeud
plot(som, type="count")
plot(som, type="mapping",pch=20)
# afficher la distance dans le voisinage des noeuds
plot(som, type="dist.neighbours")
#affiche la distribution des attributs par noeud
plot(som, type="codes",codeRendering="segments")
################### Afficher les heatmaps par élément ##########################
data <- som$codes
# clustring hiérarchique
data=unlist(data)
d=dist(data,method="euclidean")
cah=hclust(d, method="ward.D")
groupes=cutree(cah,k=3)
groupes
# afficher resultat clustring:
plot(som, type="mapping",bgcol=c("yellowgreen","steelblue","red","pink")[groupes])
add.cluster.boundaries(som,clustering=groupes)
