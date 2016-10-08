.PHONY: all clean data

all: data eda-output.txt regression.RData report.pdf


#download data

data:
	curl > data/Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

report.pdf: data/regression.RData report/report.Rmd
	#pandoc data/regression.RData report/report.Rmd --latex-engine=pdflatex -o report/report.pdf
	pandoc report/report.Rmd -o report/report.pdf
	rm -r tex2pdf* #for some reason this type of directory is formed by MikTeX
	rm *.md #sometimes these also form

regression.RData: code/regression-script.R  data
	#Rscript code/regression-script.R
	Rscript $< 

eda-output.txt: code/eda-script.R data
	Rscript $<  

clean:
	rm -rf report/report.pdf