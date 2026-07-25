# Read the female mice dataset from a CSV file
mice <- read.csv("femaleMiceWeights.csv")

# Display the column names
names(mice)

# Display the value in row 12, column 2
mice[12,2]

# Display the body weight of the mouse in row 11
mice$Bodyweight[11]

# Count the number of mice in the dataset
length(mice$Bodyweight)

# Display the entire dataset
mice

# Display the entire dataset
mice$Diet=="hf"

# Create a new data frame containing only mice on the high-fat diet
hf_mice <- mice[mice$Diet == "hf", ]

# Calculate the average body weight of mice on the high-fat diet
mean(hf_mice$Bodyweight)

# Set a random seed to make the results reproducible
set.seed(1)

# Randomly select one row number between 13 and 24
sample(13:24, size = 1)

# Display the body weight of the selected mouse
mice$Bodyweight[21]
