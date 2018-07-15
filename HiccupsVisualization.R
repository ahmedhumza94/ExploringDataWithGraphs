#Hiccup Data Visualization

#Load Data
hicData <- read.delim("Hiccups.dat")
#View Data
View(hicData)
#Stack repeated measures
hiccups <- stack(hicData)
#Rename Columns
names(hiccups) <- c("Hiccups","Intervention")
#ViewDF
View(hicDataStacked)

#Create line graph object
lineGraph <- ggplot(hicDataStacked,aes(Intervention,Hiccups))
lineGraph +
  stat_summary(fun.y=mean,geom="line",aes(group=1),colour="Blue") +
  stat_summary(fun.data = mean_cl_normal, geom="errorbar",width=0.2)
