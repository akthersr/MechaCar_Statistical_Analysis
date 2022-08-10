# MechaCar_Statistical_Analysis

## Overview of the project

Jeremy, was invited by the upper management team for the MechaCar project,the AutosRUs’ newest prototype, which was suffering from production troubles that are blocking the manufacturing team’s progress. Jeremy and the data analytics team are going to review the production data for insights that may help the manufacturing team of the MechaCar.

The main objectives are as follows:

-To identify which variables in the dataset predict the mpg of MechaCar prototypes by performing multiple linear regression analysis.

-Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.

-Run t-tests to determine if the manufacturing lots are statistically different from the mean population.

-Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars.Here we perform multiple linear regression using the lm() function. In the lm() function, pass in all six variables (such as vehicle length, vehicle weight, spoiler angle, AWD,mpg and ground clearance).An RScript was corresponded for a linear regression model performed on all six variables to get the coefficients/variables.The independent variables are as follows:

![](https://github.com/akthersr/MechaCar_Statistical_Analysis/blob/main/deliverable%201.1.png)

The summary() function,gives us the statistical summary of the linear regression model with the intended p-values and the r-squared values.In resduals,where the absolute value of the min and max are |-19.47| and |18.58|,the median was -.0692.

![](https://github.com/akthersr/MechaCar_Statistical_Analysis/blob/main/deliverable%201.2.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Among all of six variables vehicle length,ground clearance are statistically significant in providing a non-random amount of variance to the mpg values in the dataset. The corresponding p-values for both are less than .001. these two variables are statistically significant predictor for mpg. The other variables (vehicle weight, spoiler angle, AWD) are not significant predictor for mpg,because of their large p-values.

Is the slope of the linear model considered to be zero? Why or why not?

The slope or intercept of the linear model was also satistically significant, some of them are non zero and some are close to zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The R-squared statistic was 0.7149. So, an R-squared of 0.7149 means that the predictors explain about 71% of the variation in the mpg. The overall p-value was 5.35e-11. From the above analysis we can say that the dataset is an effective dataset, the model fitted well in predicting mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils

An RScript was created to produce a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

total_summary table:

![](https://github.com/akthersr/MechaCar_Statistical_Analysis/blob/main/all%20lot.png)

lot_summary table:

![](https://github.com/akthersr/MechaCar_Statistical_Analysis/blob/main/each%20lot.png)

The varience of the all manufacturing lot was 62.29,which is less than 100 mets the design specifications standard. When,we calculate the manufacturing lots indivisualy lot3 fails to met the criteria, which was 170 pounds. On the otherhand, Lot1 and Lot2 mets the criteria have lower varience 1 and 7 pounds respectively.

The following boxplot also shows the difference between the lots;

![](https://github.com/akthersr/MechaCar_Statistical_Analysis/blob/main/box%20plot.png)

## T-Tests on Suspension Coils

### T-test for all lots

In this step we have find is there any significance difference between the sample dataset and the population dataset. Here,the null hypothsis is the true mean is eqal to 1500.

The summary of the t-test for all manufacturing lots:
![](https://github.com/akthersr/MechaCar_Statistical_Analysis/blob/main/deli%203.png)

Lot1:
![](https://github.com/akthersr/MechaCar_Statistical_Analysis/blob/main/lot1.png)
Lot2:
![](https://github.com/akthersr/MechaCar_Statistical_Analysis/blob/main/lot2.png)
Lot3:
![](https://github.com/akthersr/MechaCar_Statistical_Analysis/blob/main/lot3.png)



