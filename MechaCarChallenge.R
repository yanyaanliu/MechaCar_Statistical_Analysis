# Part 1: Linear Regression to Predict MPG

# load package
library(dplyr)
library(tidyverse)

# import and read csv as a dataframe
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")
head(MechaCar_mpg)

# linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)
# summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))

#Part 2: Create Visualizations for the Trip Analysis

# import csv and read as a table
Suspension_Coil <- read.csv("Suspension_Coil.csv")
#stat summary with summarize()
total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 


# lot_summary dataframe using groupby() and summarize()
lot_summary <- Suspension_Coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')    

# Part 3: T-Tests on Suspension Coils

# t-test for all the lots, pop mu = 1500 psi
t.test(Suspension_Coil$PSI,mu=mean(Suspension_Coil$PSI))
# t-test for lot 1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Coil$PSI))
# t-test for lot 2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Coil$PSI))
# t-test for lot 3
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Coil$PSI))