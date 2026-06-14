############
###########SESSION7_______________________
###########DATA VISUALIZATION-------------
######################################____


#Load library
library(tidyverse)

#read the data
df <- read_csv("/Users/gersonafai/G-Tai/AFAI/Cursos/ECR Program/Tasks/Workshop7_data Visual_/Repeated_data_visualization/pf_incidence_national.csv")

#simople scatterplot

ggplot(data=df)

ggplot(data=df, aes(x=date_tested,y=conf))+
  geom_point()

#customization 

ggplot(data=df, aes(x=date_tested,y=conf))+
  geom_point(color="red", size=5, aplha=0.3)

#simple line plot

ggplot(df,aes(x=date_tested, y=conf))+
  
  geom_line()

#customize the line
ggplot(df,aes(x=date_tested, y=incidence))+
  geom_line(ccolor="blue", linewidth=0.2, linetype="dashed")


#customize specific groups
ggplot(df %>% filter(age_group=="ov5"),
         aes(x=date_tested,y=incidence))+
  geom_line()

#Facetes - used to display more than one plot
##subgoups and faceting
############################################
ggplot(df,aes(x=date_tested, y=incidence, color=age_group))+
  geom_line()

ggplot(df,aes(x=date_tested, y=incidence, color=age_group))+
  geom_point(size=4)


##separated lines (ov5 u5 and Total)
ggplot(df,aes(x=date_tested, y=incidence))+
  geom_line()+
  facet_wrap(~age_group)


ggplot(df,aes(x=date_tested, y=incidence, color=age_group))+
  geom_line()+
  facet_wrap(~age_group)

ggplot(df,aes(x=date_tested, y=incidence))+
  geom_line()+
  facet_wrap(~age_group, scales="free_y")

ggplot(df,aes(x=date_tested, y=incidence))+
  geom_line()+
  facet_wrap(~age_group, scales="free_y",ncol=2)

###activity3
ggplot(df,aes(x=date_tested, y=incidence, color=age_group))+
  geom_point()+
  facet_wrap(~age_group, scales="free_y",ncol=2)  

ggplot(df,aes(x=date_tested, y=incidence, color=age_group))+
  geom_point()+
  facet_wrap(~age_group) 


####Changing plots background-using "theme"
 

##Changing labels:Title, axes, legend###


##Box Plots

df2 <- read_csv("/Users/gersonafai/G-Tai/AFAI/Cursos/ECR Program/Tasks/Workshop7_data Visual_/Repeated_data_visualization/pf_incidence.csv")

ggplot(df2,aes(x=date_tested, y=conf, group=date_tested))+
  geom_boxplot()
  
###why not using goup_by????


###geom_histogram

ggplot(df2,aes(x=conf))+
  geom_histogram()

ggplot(df2,aes(x=conf))+
  geom_histogram(bins = 25,fill="blue")

ggplot(df2,aes(x=conf))+
  geom_histogram(bins = 25,fill="blue", color="white")

##geom_bar
ggplot(df2, aes(x=date_tested,y=incidence, fill=age_group))+
  geom_bar(stat = "identity")

ggplot(df2, aes(x=date_tested,y=incidence, fill=age_group))+
  geom_bar(stat = "identity", position = "dodge")+
  labs(title="incidence per age group",
       x="months",
       y="incidence per 1000 habitants")+
  theme_classic()

####Activity 4###

 ggplot(df, aes(x = date_tested, y = incidence,color = age_group)) +
   geom_line() +
   geom_point(size = 2, alpha = 0.7) +
   labs(title= "Malaria Incidence, Mabangata Region, 2018",
        x="Months",
        Y="Incidence (Cases/100,000)")+
   theme_classic()
          
          
ggplot(df, aes(x = date_tested, y = incidence, color = age_group)) +
  geom_line() +
  geom_point(size = 2, alpha = 0.7) +
  labs(title = "Malaria Incidence, Mabangata Region, 2018",
       x = "Months",
       y = "Incidence (Cases/100,000 hab)") +
  theme_classic()


#How to save my script
save.image()

#how to easily quite all my session
q()

###Now how can I share it with Gloria end Neema??



  

