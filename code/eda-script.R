#==================================================================================================
# File Name: eda-script.R
# Title: EDA of Advertisting Dataset
# Author: Nura Kawa
# Assignment: hw02
# Course: Stat 159, Fall 2016
# Date: October 4, 2016
#==================================================================================================

envpath <- "C:/Users/Nura/Desktop/Fall 2016/Stat 159/stat159-fall2016-hw02/stat159-fall2016-hw02"

# change working directory
setwd(paste0(envpath, "/data/"))

# reading in advertising data
advertising <- read.csv("Advertising.csv", stringsAsFactors = FALSE)

