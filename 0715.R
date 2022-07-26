library(dplyr)
library(tidyverse)
library(readr)

homework<- read_csv("C:/Users/88693/Desktop/怡欣/生物資訊程式設計與應用/homework.csv")
str(homework)
homework$target_type<-as.factor(homework$target_type)
homework$organism<-as.factor(homework$organism)
f<-select(homework,organism,target_type)
f<-filter(homework,target_type=="PROTEIN COMPLEX" | target_type=="PROTEIN FAMILY")
f<-count(f,target_type,organism)
f<-arrange(f,desc(n))
