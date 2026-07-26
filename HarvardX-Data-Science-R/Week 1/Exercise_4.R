#Install the UsingR package
install.packages("UsingR")

#Load the UsingR package
library(UsingR)

#Extract the fathers heights from the father.son dataset
x=father.son$fheight

#Count the number of observations
length(x)

#Draw a random sample of 20 heights and round to one decimal
round(sample(x,20),1)

#Create a histogram of the fathers heights
hist(x,breaks=seq(floor(min(x)),ceiling(max(x))),
     main="Height histogram",xlab="Height in inches")

#Generate a sequence of whole-number height values
seq(floor(min(x)),ceiling(max(x)))

#Generate a sequence of height values with 0.1-inch intervals
xs<-seq(floor(min(x)),ceiling(max(x)),0.1)

#Plot the emirical cumulative distribution function (ECDF)
plot(xs,ecdf(x)(xs),type="l", 
     xlab="Height in inches", ylab="F(x)")
  