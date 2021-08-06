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


# Deliverable 4:


