# Module 15 Challenge 
#----------------- Deliverable 1
library(dplyr)
df <- read.csv("MechaCar_mpg.csv", header=T)
df$AWD <- as.factor(df$AWD)

# Linear Regression; model 1 = m1
m1 <- lm(mpg~., data = df )
summary(m1)

#----------------- Deliverable 2
# See resource: https://www.guru99.com/r-aggregate-function.html#1
coils <- read.csv("Suspension_Coil.csv")
#psi2 <- coils %>% select("PSI")
#psi <- as.data.frame(coils[,"PSI"])
total_summary <- summarize(coils, Mean=mean(PSI), Median=median(PSI),
                           Variance=var(PSI), SD=sd(PSI))
total_summary

lot_summary <- coils %>% 
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), 
            Variance=var(PSI), SD=sd(PSI))
lot_summary

boxplot(PSI~Manufacturing_Lot, data=coils)
plot(coils$PSI)
