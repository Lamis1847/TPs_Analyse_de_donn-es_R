data = airquality 
data
head(data)
reg=lm(Ozone~.,data)
reg
summary(reg)
data1=data[,-1]
y=predict(reg,new=data1[1,])
head(data1)
y	
head(data)	
reg1=lm(Ozone~Solar.R+Wind+Temp,data)	
reg1
summary(reg1)
data1=data[,-1]
y=predict(reg1,new=data1[1,])
y
																