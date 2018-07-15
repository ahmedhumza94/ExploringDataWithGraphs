#Visualization of Exam Anxiety Data from 
#Discovering Statistics Using R Exercise

#Set working Directory
setwd("/Users/humza/Google Drive/MOOCs/StatisticsAndR/ExploringDataWithGraphs")

#Load Libraries
library(ggplot2)

#Load Data file
examData <- read.delim("Exam Anxiety.dat",header=TRUE)

#View Data
View(examData)

#Create Graph object
graph <- ggplot(examData,aes(Anxiety,Exam,colour = Gender))
#Gender coded scatterplot with linear regression lines and 95% confidence intervals
graph + geom_point() + geom_smooth(method = "lm",aes(fill=Gender), alpha = 0.1) + labs(x="Anxiety",y="Exam Performance %")
