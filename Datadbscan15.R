library(dbscan)
iris
head(iris)
data=iris[,-5]
kNNdistplot(data,k=5)
abline(h=.5, col="red",lty=2)
res <-dbscan(data,eps=.5,minPts=5)
res
hullplot(iris[-5],res)
