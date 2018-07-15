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
