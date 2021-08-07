# MechaCar_Statistical_Analysis
Challenge 15 for UT Bootcamp - R and Statistics



# Deliverable 1:
## Linear Regression to Predict MPG
After creating the multiple linear regression model on the data, I converted the AWD variable to a factor instead of an integer. This is the summary of the model with all 5 predictor variables.

![LinearRegSummary](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/LinearRegSummary.PNG)

The variables that are significant (alpha = 0.10) in predicting the mpg value are vehicle length, vehicle weight, and ground clearance. The slope of the linear model is non-zero, meaning that the variables just listed provide a way to get a better prediction than a linear model with a slope of zero. This linear model (with all 5 predictors) predicts mpg relatively effectively. It's adjusted R-squared value is 0.6825, meaning that about 68% of the variance in mpg is explanined by the 5 variables in the full model.



# Deliverable 2:
## Summary Statistics on Suspension Coils
The mean, median, variance, and standard deviation for the total summary of all 150 observations is shown in the table.

![total_summary](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/total_summary.PNG)

The variation needs to be less than 100 for the design specifications, so overall the entire 150 observations meet that.

However, the plot of PSI versus index shows that as the index progresses (1-50 in Lot 1, 51-100 in Lot 2, 101-150 in Lot 3), the variation increases.  

![indexPlot](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/indexPlot.png) 

A boxplot showing the PSI values for Lot 1, Lot 2, and Lot 3 shows the same differences in variation for the different lots. 

![boxplot](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/boxplots.png) 

The variation values when grouped by lot show that the suspension coils in Lot 3 do not meet the design specifications since the variance is 170.3. Lot 1 and Lot 2 do meet the design specifications.

![lot_summary](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.PNG) 



# Deliverable 3:
## T-Tests on Suspension Coils
The t-tests performed here are two-tailed, as we want to know if the PSI value is statistically different from 1500 and not just if it is higher or lower. The Module 15 Challenge directions did not specify an alpha threshold, so we will use the value of 0.05 to decide if our results are statistically significant.

### Test Scenario 1: All lots together
We know from the indexPlot above that it is likely that PSI values are not normally distributed. The histogram below confirms this.

![histogram](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/histogram.png)

The QQ Plot also shows that the distribution has a heavy number of values in the middle and not as many values in the tails. 

![qqplot](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/qqplot.png)

Therefore, the data does not seem to meet the assumptions for the t-test, but we are instructed to run it anyways. The result from the t-test are shown.

![OverallTtest](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/OverallTtest.PNG)

The p-value is greater than 0.05, so there is not sufficient evidence to reject the null hypothesis that the overall mean is different from 1500.


### Test Scenario 2:
In this scenario, the observations are separated into the Lots and a t-test is performed on each lot separately.

*Lot 1*
A histogram (not shown) of the data shows that the distribution somewhat resembles a normal distribution. The t-test results have a p-value of 1, so there is no evidence to reject the null hypothesis that the mean is 1500.

![lot1ttest](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/lot1ttest.png)

*Lot 2*
A histogram (not shown) of the data shows that the distribution resembles a normal distribution (more so than Lot 1). The t-test results have a p-value of 0.6072, so there is no evidence to reject the null hypothesis that the mean is 1500.

![lot2ttest](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/lot2ttest.png)

*Lot 3*
The data distribution (histogram not shown here) somewhat resembles a normal distribution. The t-test results have a p-value of 0.04, so there is sufficient evidence to reject the null hypothesis. The mean of this group, 1496.14 is statistically significant from 1500 at the 0.05 level.

![lot3ttest](https://github.com/SG314159/MechaCar_Statistical_Analysis/blob/main/images/lot3ttest.png)



# Deliverable 4:
## Study Design: MechaCar vs Competition
Goal: describe a statistical comparison between MechaCar and a competitor

- *What metric or metrics are you going to test?* 
We are going to compare fuel efficiency by comparing the highway mpg for MechaCars versus Competitor Brand X.

- *What is the null hypothesis or alternative hypothesis?* 
Our belief is that MechaCar has higher highway mpg due to some new engineering that has improved our car engines. The null hypothesis is that there is no difference in the highway mpg of MechaCar and Competitor Brand X. The alternative hypothesis is one-tailed, as we will test that MechaCar - Competitor Brand X > 0. This is equivalent to testing that MechaCar highway mpg > Competitor Brand X mpg. We will use an alpha value of 0.05.

- *What statistical test would you use to test the hypothesis? And why?* 
Based on past data samples of MechaCar highway mpg and Competitor Branc X mpg, we believe both distributions are approximately normal. Since we are comparing the mean of the MechaCar samples with the mean of the Competitor Brand X samples, we can use a two-sample t-test, one-tailed.

- *What data is needed to run the statistical test?* 
We need two samples, one of MechaCars and the other of Competitor Brand X cars. Our sample size will be 75 cars for each. The cars in the samples are of the same class (sedan), have approximately the same age and mileage (all are less than 3 years old and have less than 35,000 miles), and have the same number of cylinders (4 cylinders). The mean weight for each group is 2000 pounds, and the distribution of the weights of the cars in the sample has a standard deviation of less than 50 pounds. In other words, 99.7% of the cars in both samples will have a weight between 1850 and 2150 pounds. From cars with these characteristics, we randomly chose 75 cars for this study. The cars in this study will be driven in approximately equivalent highway conditions for 200 miles, and the miles per gallon will be calculated for each car.  

