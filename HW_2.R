# EE627 - Homework 2
# Author: Yoohan Ko
# I pledge my honor I have abided by the Stevens Honor System

# Question 2
rm(list = ls())

# importing data set provided
data2 = read.csv("EE627A_HW2_Q2.csv", header = FALSE)

# print out the first few items of the data set
head(data2)

dev.new()
plot(data2$V1, type = 'l')

dev.new()
par(mfrow =c(1,2))
acf(data2, lwd=3)
pacf(data2, lwd=3)
dev.new()
plot(data2$V1, type = 'l')

# testing out different ARIMA models with a constsnt d value
tt <- arima(data2, c(0,0,2))
summary(tt)

dev.new()
par(mfrow = c(1,2))
acf(tt$residuals)
pacf(tt$residuals)



# Question 3

# importing data set provided
data3 = read.csv("EE627A_HW2_Q3.csv", header = FALSE)

#print out the first few items of the data set
head(data3)

dev.new()
plot(data3$V1, type = 'l')

dev.new()
par(mfrow =c(1,2))

acf(data3, lwd=3)
pacf(data3, lwd=3)

dev.new()
plot(data3$V1, type = 'l')

ss <- arima(data3, c(1,1,2))
summary(ss)

dev.new()
par(mfrow = c(1,2))

acf(ss$residuals)
pacf(ss$residuals)
