# Module 15 Challenge - Deliverable 1
library(dplyr)
df <- read.csv("MechaCar_mpg.csv", header=T)
df$AWD <- as.factor(df$AWD)

# Linear Regression; model 1 = m1
m1 <- lm(mpg~., data = df )
summary(m1)
