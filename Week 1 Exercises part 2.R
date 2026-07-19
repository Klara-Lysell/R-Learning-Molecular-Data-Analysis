mice <- read.csv("femaleMiceWeights.csv")
names(mice)
mice[12,2]
mice$Bodyweight[11]
length(mice$Bodyweight)
mice
mice$Diet=="hf"
hf_mice <- mice[mice$Diet == "hf", ]
mean(hf_mice$Bodyweight)
set.seed(1)
sample(13:24, size = 1)
mice$Bodyweight[21]