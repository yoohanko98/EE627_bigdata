# EE627 - Homework 1
# Author: Yoohan Ko
# I pledge my honor I have abided by the Stevens Honor System


# First R Assignment, first time ever using R
#========================================================

# Importing data set provided
M = read.csv("EE627A_HW1_Data.csv", header = TRUE)

# print out the first row to check headers
head(M,1)

#========================================================
# compute the correlation matrix
M.cor = cor(M)

# get the structure of the correlation matrix(data frame)
str(M.cor)

# Calculate the mean of each row with row labels:
# reference: https://stackoverflow.com/questions/10945703/calculate-row-means-on-subset-of-columns
M.cor_mean <- data.frame(Mean=rowMeans(M.cor[,-1]))
M.cor_mean

# export the correlation values as a csv file
write.csv(M.cor, "HW_1_CorrelationMatrix.csv")

# visualize the correlation matrix
# install "corrplot" package and load into library
install.packages("corrplot")
library(corrplot)

# generate correlation matrix plot (correlogram)
corrplot(M.cor)


#========================================================
# ACF Function

# ACF of time series of Mkt-rf
acf(M[,2], lag.max = 10, plot = FALSE)


# ACF of time series of SMB
acf(M[,3], lag.max = 10, plot = FALSE)


# ACF of time series of HML
acf(M[,4], lag.max = 10, plot = FALSE)


# ACF of time series of Momentum
acf(M[,5], lag.max = 10, plot = FALSE)


# by running PACF we can figure out the order of these systems by looking at the
pacf(M[,2], lag.max = 10, plot = TRUE)
pacf(M[,3], lag.max = 10, plot = TRUE)
pacf(M[,4], lag.max = 10, plot = TRUE)
pacf(M[,5], lag.max = 10, plot = TRUE)


