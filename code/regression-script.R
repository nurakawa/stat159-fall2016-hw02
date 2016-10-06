#==================================================================================================
# File Name:        regression-script.R
# Title:            Regression with Advertisting Dataset
# Author:           Nura Kawa
# Assignment:       hw02
# Course:           Stat 159, Fall 2016
# Date:             October 5, 2016
#
# Summary: Reads in the Advertising.csv data set, and computes a "regression" 
# object---via lm()---as well as the summary of such regression object---via summary(). 
# This script also produces the scatterplot with the regression line. 
# The R objects from the regression analysis are saved in the file regression.RData. 
# In turn, the scatterplot is saved in both PNG and PDF formats.
#
# Output Files:     regression.RData
#                   scatterplot-tv-sales.png
#                   scatterplot-tv-sales.pdf
#==================================================================================================

envpath <- "C:/Users/Nura/Desktop/Fall 2016/Stat 159/stat159-fall2016-hw02/stat159-fall2016-hw02/"

# change working directory
setwd(envpath)

# reading in advertising data
advertising <- read.csv("data/Advertising.csv", stringsAsFactors = FALSE)

# computing regression object via lm()
regression_object <- lm(Sales ~ TV, data = advertising)

# summary of regression object
regression_summary <- summary(regression_object)

# saving object to .Rdata file
save(regression_object, regression_summary, file = "data/regression.RData")

# scatterplot of regression object, with regression line
make_scatterplot <- function()
{
  plot(advertising$TV,
       advertising$Sales,
       xlab = "TV",
       ylab = "Sales",
       main = " ",
       pch = 16,
       cex = 1.1,
       col = rgb(0.9, 0.2, 0.2))
  abline(regression_object,
         lwd = 2,
         col = "blue")
  
  # adding lines to regression line
  # found on: http://stackoverflow.com/questions/23494232/regression-line-to-data-points-how-to-create-vertical-lines
  
  line_data <- cbind(advertising$TV,
                     advertising$TV,
                     advertising$Sales,
                     predict(regression_object))
  
  apply(line_data,
        1,
        function(coords){lines(coords[1:2],coords[3:4],
                               col = "darkgray")})
}


# Saving scatterplot to .png and .pdf files

png("images/scatterplot-tv-sales.png")
make_scatterplot()
dev.off()

pdf("images/scatterplot-tv-sales.pdf")
make_scatterplot()
dev.off()

