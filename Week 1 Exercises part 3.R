# Install the dplyr package (only needed once)
install.packages("dplyr")

# Load the dplyr package
library(dplyr)

# Install the ggplot2 package (only needed once)
install.packages('ggplot2')

# Load the ggplot2 package
library(ggplot2)

# Load the built-in msleep dataset from ggplot2
data(msleep)

# Read the msleep dataset from a CSV file
show(msleep)

# Read the msleep dataset from a CSV file
msleep <- read.csv("msleep_ggplot2.csv")

# Display the class of the dataset
class(msleep)

# Filter the dataset to include only primates
primates <- filter(msleep, order == "Primates")

# Count the number of primates in the dataset
nrow(primates)

# Display the class of the filtered dataset
class(primates)

# Select only the sleep_total column
select(msleep, sleep_total)

# Filter the dataset to include only primates and select the sleep_total column
msleep %>%
  filter(order == "Primates") %>%
  select(sleep_total)

# Display the class of the filtered and selected object
class(
  msleep %>%
    filter(order == "Primates") %>%
    select(sleep_total)
)

# Calculate the average amount of sleep for primates
mean(unlist(msleep %>% filter(order == "Primates") %>% select(sleep_total)))

# Calculate the average amount of sleep for primates using summarize()
msleep %>%
  filter(order == "Primates") %>%
  summarize(avg_sleep = mean(sleep_total))
