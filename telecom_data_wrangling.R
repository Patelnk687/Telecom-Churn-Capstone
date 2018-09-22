
library(knitr)
library(readr)
library(dplyr)

setwd("C:/Users/NP/Desktop/SPRINGBOARD/Caspstone telecom")

telecom <- read.csv("WA_Fn-UseC_-Telco-Customer-Churn.csv", header=T)
telecom

# shows that the variables do not have 
str(telecom)
plot(telecom$gender)


# using the numerical values to find outliers
summary(telecom$tenure)
summary(telecom$MonthlyCharges)
summary(telecom$TotalCharges)# has 11 blanks but i think we need to keep these

write.csv(telecom,"telecom.csv")
