install.packages("dplyr")
library(dplyr)
install.packages('ggplot2')
library(ggplot2)
data(msleep)
show(msleep)
msleep <- read.csv("msleep_ggplot2.csv")
class(msleep)
primates <- filter(msleep, order == "Primates")
nrow(primates)
class(primates)
select(msleep, sleep_total)
msleep %>%
  filter(order == "Primates") %>%
  select(sleep_total)
class(
  msleep %>%
    filter(order == "Primates") %>%
    select(sleep_total)
)
mean(unlist(msleep %>% filter(order == "Primates") %>% select(sleep_total)))
msleep %>%
  filter(order == "Primates") %>%
  summarize(avg_sleep = mean(sleep_total))
