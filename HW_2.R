
rm(list = ls())

#importing data set provided
Data2 = read.csv("EE627A_HW2_Q2.csv", head = F)

#print out the first row of the data set
head(Data2)

dev.new()
plot(Data2[,1])
dev.new()
par(mfrow = c(1,2))
acf(Data2)
pacf(Data2)





Data3 = read.csv("EE627A_HW2_Q3.csv", head = F)

head(Data3)

dev.new()
plot(Data3[,1], type = 'l')
dev.new
par(mfrow = c(1,2))
acf(Data3)
pacf(Data3)



