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

#--------------------------------------------------------------------------------------------------
# summary statistics of TV and Sales: eda-output.txt

setwd(paste0(envpath, "data/"))

sink(file = "eda-output.txt")
cat("TV summary statistics\n")
summary(advertising$TV)
cat("\n\n")
cat("Sales summary statistics\n")
summary(advertising$Sales)
sink()

#--------------------------------------------------------------------------------------------------
# histogram of TV: histogram-tv.png, histogram-tv.pdf

setwd(paste0(envpath, "images/"))

x = advertising$TV

png(filename = "histogram-tv.png")
hist(x,
     main = "Histogram of TV",
     xlab = "Units")
dev.off()


pdf("histogram-tv.pdf")
hist(x,
     main = "Histogram of TV",
     xlab = "Units")
dev.off()

#--------------------------------------------------------------------------------------------------
# histogram of sales: histogram-sales.png, histogram-sales.pdf

x = advertising$Sales

png(filename = "histogram-sales.png")
hist(x,
     main = "Histogram of Sales",
     xlab = "Units")
dev.off()



pdf("histogram-sales.pdf")
hist(x,
     main = "Histogram of Sales",
     xlab = "Units")
dev.off()
