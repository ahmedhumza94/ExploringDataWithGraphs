#Visualization of Facebook Narcissism data
#Data provided by Andy Field's Companion Website for his book on 
#Discovering Statistics through R

#Set working Directory
setwd("/Users/humza/Google Drive/MOOCs/StatisticsAndR/ExploringDataWithGraphs")

#Load Libraries
library(ggplot2)

#Load Data file
fbData <- read.delim("FacebookNarcissism.dat",header=TRUE)

