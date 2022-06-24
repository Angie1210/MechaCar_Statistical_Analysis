# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG

The linear regression model of our datase is:
mpg = 6.26 vl + .001vw + .07sa + 3.55gc -3.41AWD - 104.02

Then we used the summary() function to determine the p-value and the r-squared value for the linear regression model.

![Screen Shot 2022-06-23 at 5 14 23 PM](https://user-images.githubusercontent.com/43548929/175424061-4431d0cf-4392-4ffc-8b6d-3b681b9b2f38.png)


All Pr(>|t|) values represents the probability that each coefficient contributes a random amount of variance to the linear model, specifically the coefficients that provided a non-random amount of variance to the mpg values are the vehicle lenght, ground clearance and the intercept.

According to our results, vehicle length, ground clearance and the intercept have a significant impact on the MechaCar mpg, therefore we can reject the null hipothesis that says that the slope of the linear model is equal to zero. The intercept is statistically significant and it means it can explain a lot of variability on the dependent variable.

This linear model predict mpg of MechaCar prototypes effectively because it has an R-squared value of .714, so there's a strong correlation.

## Summary Statistics on Suspension Coils

Total summary Data Frame 

![Screen Shot 2022-06-23 at 5 18 10 PM](https://user-images.githubusercontent.com/43548929/175424473-a58d991e-6764-41ff-a22b-66c8d2759c3e.png)


Lot summary DataFrame

![Screen Shot 2022-06-06 at 8 36 05 PM](https://user-images.githubusercontent.com/43548929/172290445-e4b248eb-eed2-4263-889b-36c8c93759cd.png)

As we can see the means and medians of all the Lots are similar to the population Data Frame, but the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch, but as we can see Lot #3 doesnt meet the especifications, because it has a variance of 170.28. 

## T-Tests on Suspension Coils

#T-test of all the lots compare to the population#

The p-value is .0602 so it's highr of the significance level of .05, so its not statiscally significant and we can not reject the null hipothesis and we can assume that the mean is equal to 1500.

![Screen Shot 2022-06-06 at 8 39 08 PM](https://user-images.githubusercontent.com/43548929/172290790-06886f22-9f2f-4a56-a456-1c740c6c1ac9.png)

# T-test of each lot comparing to the population#


Lot 1 and Lot 2 have p-values higher than the significance level of .05, Lot1 has a p-value of 1 and Lot2 of .6072, so they are not statiscally significant and indicates strong evidence for  the null hipothesis, around 95% probability to be true and we don't reject the null hipothesis.

Lot#1

![Screen Shot 2022-06-06 at 8 40 34 PM](https://user-images.githubusercontent.com/43548929/172290947-21da2cde-009f-4fd5-82f8-3ddae10e7962.png)


Lot#2

![Screen Shot 2022-06-06 at 8 40 45 PM](https://user-images.githubusercontent.com/43548929/172290970-258c70a5-3f0e-4e23-9028-cbb9111321e2.png)

Here in Lote 3 the p-value is below our significance level of .05, so there is less than 5% probability that the null hipothesis is correct so we reject the null hipothesis and accept the alternative hipothesis.

Lot#3

![Screen Shot 2022-06-06 at 8 41 00 PM](https://user-images.githubusercontent.com/43548929/172290996-f1afefe0-b7a8-4edf-8d73-44b3058a54df.png)

## Study Design: MechaCar vs Competition.

We suggest to test more features to have a better understanding of MechaCar position against the competition. Some of the metrics suggested are price of the car, passenger capacity, cost of mantainance and safety ratings.

The Ho would be if there is no relationship between these metrics from the MechaCar vehicles against vehicles from other manufacturers. for example it could be that in average the cost of mantainance of MechaCars has no relation with the competition average cost of mantainance.

As we are talking about means,I would use again a T-test to compare the relationship between the  average cost of mantainance. We need the database with the different cost of mantainance, that includes the cost for oil change, battery repplacement, brake pad replacement, tires.

