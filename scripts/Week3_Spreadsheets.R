surveys <- read.csv("data/portal_data_joined.csv")
str(surveys)
surveys
class(surveys)

nrow(surveys)
ncol(surveys)
str(surveys)

head(surveys)
tail(surveys)
head(surveys,n = 3)
summary.data.frame(surveys)
summary(object = surveys)


surveys[1,5]
head(surveys,1)

surveys[1,]
surveys[,1]
head(surveys[1])
head(surveys[,1])

surveys[1:3,]

1:10
surveys[1:10,]

surveys[,1:3]

surveys[1:3,1:3]

surveys[c(1,4,10),c(2,4,6)]

surveys[,-1]

surveys[-1,]

surveys[-c(7:nrow(surveys)),]
nrow(surveys)==34786
head(surveys)

head(surveys["genus"])
head(surveys[,"genus"])
head(surveys[["genus"]])
surveys$genus

install.packages('tidyverse')
library(tidyverse)

t_surveys <- read_csv('data/portal_data_joined.csv')
class(t_surveys)
t_surveys

surveys[,1]
t_surveys[,1]




