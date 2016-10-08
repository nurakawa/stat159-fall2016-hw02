#'code' scripts

__eda-script.R__
* Reads in data/Advertising.csv data set, and computes summary statistics and histograms of variables __TV__ and __Sales__. 
* Summary statistics are saved in a file data/eda-output.txt. 
* Charts of summary statistics are saved in both PNG and PDF formats.


__regression-script.R__
* Reads in data/Advertising.csv data set, and computes a "regression" object---via lm()---as well as the summary of such regression object---via summary(). 
* This script also produces the scatterplot with the regression line. 
* The R objects from the regression analysis are saved in the file data/regression.RData. 
* In turn, the scatterplot is saved in both PNG and PDF formats.

