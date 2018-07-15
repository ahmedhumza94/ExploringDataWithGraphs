#Visualizations of ChickFlick.dat 

#load data
chickData <- read.delim("ChickFlick.dat")
#View Data
View(chickData)

#Plot means of arousal scores by film
filmBar <- ggplot(chickData,aes(film,arousal))
filmBar +
  stat_summary(fun.y=mean,geom="bar",fill="White",colour="Black") + 
  stat_summary(fun.data = mean_cl_normal,geom="errorbar") +
  labs(x="film",y="arousal score",title="Mean Arousal Scores by Film")

#Mean Arousal Scores by Film and gender in barplot
gFilmBar <- ggplot(chickData,aes(film,arousal, fill = gender))
gFilmBar +
  stat_summary(fun.y=mean,geom="bar",position = "dodge")+ 
  stat_summary(fun.data = mean_cl_normal,geom="errorbar",position=position_dodge(0.9),
               width = 0.2)
