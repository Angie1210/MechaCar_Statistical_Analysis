####### Deliverable 1 ##########

library(dplyr)

mechacar=read.csv("MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)
head(mechacar)

?lm()

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechacar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechacar))

####### Deliverable 2 ##############

suspensionCoil=read.csv("Suspension_Coil.csv",check.names=F,stringsAsFactors = F)
head(suspensionCoil)

total_summary<-suspensionCoil%>%summarize(Mean=mean(PSI), Median=median(PSI),Variance= var(PSI),SD=sd(PSI),.groups='keep')
total_summary

lot_summary<-suspensionCoil%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI),Variance= var(PSI),SD=sd(PSI),.groups='keep')
lot_summary

######### Deliverable 3 ##############

?t.test()

#step1
t.test(suspensionCoil$PSI,mu=1500)

Lot1<-subset(suspensionCoil, Manufacturing_Lot=="Lot1")
Lot2<-subset(suspensionCoil, Manufacturing_Lot=="Lot2")
Lot3<-subset(suspensionCoil, Manufacturing_Lot=="Lot3")

t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)

