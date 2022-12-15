## Linear Regression to Predict MPG
![1](/Images/image1.png)
<br/>
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
the variables/coefficients that are likely to provide a non-random amount of variance to the model are vehicle length and vehicle ground.
* Is the slope of the linear model considered to be zero? Why or why not?
The slope of this linear model is not zero. The slopes for the coefficients are as follows:
vehicle length: 6.267
vehicle weight: .001
spoiler angle: .069
ground clearance: 3.546
AWD: -3.411

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The r-squared value is 0.7149, which means that only 71% of mpg predictions are determined by this model. This linear model does not predict mpg of MechaCar prototypes effectively

## Summary Statistics on Suspension Coils
![2](/Images/image2.png)
<br/>
![3](/Images/image2.1.png)
<br/>
* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? <br/>
When looking at all manufactoring lots, the variance of 62.29 PSI does no exceed 100 variance PSI requiment. 
<br/>
Looking at each of the lots individually, lot 1 and lot 2 are below the variance limit (0.98 and 7.47 respectively). Lot 3, however, shows a variance of 170.29 which exceeds the 100 PSI limit and it drives the variance of the population down. 

## T-Tests on Suspension Coils 
![4](/Images/alllots.png)
<br/>
![5](/Images/lot1.png)
<br/>
![6](/Images/lot2.png)
<br/>
![7](/Images/lot3.png)
<br/>
 Looking at the t-test from all lots, the p-Value of 0.06, which is higher than the common significance level of 0.05, there is NOT enough evidence to support rejecting the null hypothesis.
In Lot 1 and Lot 2 case, we cannot reject the null hypothesis that there is no statistical difference between the observed sample mean and the population mean
 However for Lot 3, the p-Value is 0.04 which is lower than significance level(0.05). All indicating to reject the null hypothesis that this sample mean and the population mean are not statistically different.
 
 ## Study Design: MechaCar vs Competition
 The additiomal metrics I would test are fuel efficiency and safety since these are things that consumers care about. 
 Null hypothesis: the fuel efficiency and safety of MechaCar is significally better than its competitors
 Alternative hypothesis: the fuel efficiency and safety of MechaCar is not significally better than its competitors
 The statistical test I would use to test this hypothesis is multiple linear regressional statistical summary to see how it impacts Mechar's efficiency and safety and its competitors.
The data meeded to run the test are safety and efficiency ratings of other companies and MechaCar. 
