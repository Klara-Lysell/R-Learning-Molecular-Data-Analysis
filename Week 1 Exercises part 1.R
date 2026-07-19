install.packages("swirl")
library(swirl)
ls()
rm(list=ls())
swirl()
run(swirl)
R.version.string
numbers<-c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23)
total<-0
for(i in 1:25) {total <-total + i^2}
total
cars
class(cars)
nrow(cars)
names(cars)
mean(cars[,2])
which(cars[,2]==85)
