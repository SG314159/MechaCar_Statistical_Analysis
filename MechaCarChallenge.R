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



#----------------- Deliverable 3
# t.test(xvector, mu = 1500)
#t.test(sample_table$Miles_Driven,mu=mean(population_table$Miles_Driven))
# Compare all lots together to population mean of 1500
hist(coils$PSI)
qqnorm(coils$PSI)
qqline(coils$PSI)
t.test(coils$PSI, mu=1500)

# Create separated datasets for separated t-tests
# Lot 1
lot1 <- filter(coils, Manufacturing_Lot=="Lot1")
hist(lot1$PSI)
t.test(lot1$PSI, mu=1500)

# Lot 2
lot2 <- filter(coils, Manufacturing_Lot=="Lot2")
hist(lot2$PSI)
t.test(lot2$PSI, mu=1500)

# Lot 3
lot3 <- filter(coils, Manufacturing_Lot=="Lot3")
hist(lot3$PSI)
t.test(lot3$PSI, mu=1500)








