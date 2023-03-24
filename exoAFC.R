library(FactoMineR)
children
data(children)
res.ca <- CA (children, row.sup = 15:18, col.sup = 6:8)
summary(res.ca)
sum(data[5,1:5])/1414