library(arules)
library(arulesViz)
library(dplyr)
library(ggplot2)
library(foreign)
library(xlsx)
library(lubridate)

dt <- read.csv("Dataset.csv", header = T)
data_set <-dt[,c(2:13)]


#summary do data set
summary(data_set)



#primeira geraçao de regras
rules <- apriori(data_set, parameter=list(support=0.1, confidence=0.5,minlen=2))

