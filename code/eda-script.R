#==================================================================================================
# File Name:        eda-script.R
# Title:            EDA of Advertisting Dataset
# Author:           Nura Kawa
# Assignment:       hw02
# Course:           Stat 159, Fall 2016
# Date:             October 4, 2016
#
# Output Files: 
#                   eda-output.txt
#                   histogram-sales.png
#                   histogram-sales.pdf
#                   histogram-tv.png
#                   histogram-tv.pdf
#==================================================================================================

envpath <- "C:/Users/Nura/Desktop/Fall 2016/Stat 159/stat159-fall2016-hw02/stat159-fall2016-hw02/"

# change working directory
setwd(envpath)

# reading in advertising data
advertising <- read.csv("data/Advertising.csv", stringsAsFactors = FALSE)

#computes summary statistics and histograms of TV and Sales. 
#The summary statistics should be clearly labeled, and will be saved in a file eda-output.txt. 
#The charts are saved in both PNG and PDF formats.


#--------------------------------------------------------------------------------------------------
# summary statistics of TV and Sales: eda-output.txt

sink(file = "eda-output.txt")
cat("TV summary statistics\n")
summary(advertising$TV)
cat("\n\n")
cat("Sales summary statistics\n")
summary(advertising$Sales)
sink()

#--------------------------------------------------------------------------------------------------
# histogram of TV: histogram-tv.png, histogram-tv.pdf

png(filename = "histogram-tv.png")
hist(advertising$TV,
     main = "Histogram of TV",
     xlab = "Units")
dev.off()

#--------------------------------------------------------------------------------------------------
# histogram of sales: histogram-sales.png, histogram-sales.pdf

hist(advertising$Sales,
     main = "Histogram of Sales",
     xlab = "Units")

