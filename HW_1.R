#Author: Yoohan Ko
#I pledge my honor I have abided by the Stevens Honor System


#First R Assignment, first time ever using R

#Importing data set provided
M = read.csv("EE627A_HW1_Data.csv", header = TRUE)s

#print out the first row to check headers
head(M,1)

#========================================================
#compute the correlation matrix
M.cor = cor(M)


#========================================================
#visualize the correlation matrix
#install "corrplot" package
install.packages("corrplot")
library(corrplot)

#generate correlation matrix plot (correlogram)
corrplot(M.cor)