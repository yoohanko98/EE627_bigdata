# EE627 - Homework 3
# Author: Yoohan Ko
# I pledge my honor I have abided by the Stevens Honor System



# ===============================================================================================
# Part I:
# Given below logistic regression probabilities and the ground-truth classifications. 
# Plot the ROC curve via calculating the TruePositive rate vs. FalsePositive rate. 

# putting the classifier and probabilities into separate vectors
class <- c(1, 0, 1, 0, 1, 0, 1, 0)
class

prob <- c(0.967, 0.448, 0.568, 0.879, 0.015, 0.780, 0.978, 0.004)
prob

# pROC
# An R package to display and analyze ROC curves.
install.packages("pROC")
library(pROC)

# create a plot window in the shape of a square ("s")
par(pty = "s")

# calculate roc by the vectors class and prob
roc1 <- roc(class, prob, plot = TRUE, 
            legacy.axes = TRUE, # invert the x-axis so that it goes from 0.0 to 1.0
            xlab = "FalsePositive", # labeling the x-axis
            ylab = "TruePositive", # labeling the y-axis
            col = "#003554", lwd = 4)

# obtaining the AUC value of this data set
auc(roc1)



# ===============================================================================================
# Part II:

# Decided to complete Part II in matlab.

# Split predictor and response as two parts: row 1 to row 3000 are training set data and row 3001 to 4000 are the validation set.
# Use training set data to apply the logistic regression as task 1.
# Plot ROC curve with training response and obtain the training AUC value.
# Apply the logistic regression coefficients in training set data to validation set.
# Plot ROC curve with validation response and obtain the validation AUC value. 
# What is difference between training AUC value and validation AUC value?
  


