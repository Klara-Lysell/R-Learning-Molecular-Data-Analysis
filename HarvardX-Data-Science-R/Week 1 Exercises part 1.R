# Install the swirl package (only needed once)
install.packages("swirl")

# Load the swirl package
library(swirl)

# List all objects in the current environment
ls()

# Remove all objects from the current environment
rm(list=ls())

# Start a swirl lesson
swirl()

# Resume the current swirl lesson
run(swirl)

# Display the current R version
R.version.string

# Create a numeric vector containing the given values
numbers<-c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23)

# Calculate the sum of the squares from 1 to 25
total<-0
for(i in 1:25) {total <-total + i^2}

# Display the result
total

# Display the built-in cars dataset
cars

# Show the class of the cars dataset
class(cars)

# Count the number of rows in the cars dataset
nrow(cars)

# Display the column names
names(cars)

# Calculate the average stopping distance
mean(cars[,2])

# Find the row where the stopping distance is 85
which(cars[,2]==85)
