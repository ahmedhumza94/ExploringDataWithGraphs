#Download Festival Histogram Visualizations

#Set working Directory
setwd("/Users/humza/Google Drive/MOOCs/StatisticsAndR/ExploringDataWithGraphs")

#Load Data
festData <-read.delim("DownloadFestival.dat",header=TRUE)
#View Data
View(festData)

#Initialize histogram graph object
festivalHistogram <- ggplot(festData, aes(day1)) + theme(legend.position = "none")
festivalHistogram + 
  labs(x = "Day 1 Rating",y="Frequency", title = "Day 1 Feature Histogram") +
  geom_histogram(binwidth = 0.4)

#Boxplot of day 1 scores by gender
genderBoxplot <- ggplot(festData,aes(gender,day1))
genderBoxplot + geom_boxplot() + labs(x="Gender",y="Day 1 Scores")

#Order the data by day 1 scores
festData <- festData[order(festData$day1),]
#View Last element
tail(festData,n=1)
#Correct outlier to be 2.02 instead of 20.02
festData$day1[nrow(festData)] <- 2.02

#Create new boxplot with corrected outlier
genBoxplotCor <- ggplot(festData, aes(gender,day1))
genBoxplotCor + geom_boxplot() + labs(x="Gender",y="Day 1 Scores")
