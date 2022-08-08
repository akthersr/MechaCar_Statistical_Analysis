# Deliverable 1
library(dplyr)
MechaCar_mpg_table<- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(formula = mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar_mpg_table)
summary(lm(formula = mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar_mpg_table))

# Deliverable 2

Suspension_Coil_table<- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

library(jsonlite)
total_summary <- Suspension_Coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table

# Deliverable 3

#for manufacturing lots
t.test(Suspension_Coil_table$PSI,mu=1500)
# for each manufacturing lot 
t.test(subset(Suspension_Coil_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(Suspension_Coil_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(Suspension_Coil_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
# box plot
plt <- ggplot(Suspension_Coil_table,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt + geom_boxplot() #create scatter plot

plt <- ggplot(Suspension_Coil_table,aes(y=PSI)) #import dataset into ggplot2
plt+ geom_boxplot()
