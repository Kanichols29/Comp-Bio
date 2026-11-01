toads <- read.csv("Toad_Handedness.tsv", sep="\t")
# Define empty vector to save results
right_ct <- c()

# Define number of experiments
nExp <- 100000

# Simulate
for(i in 1:nExp){
  
  # Sample "right" or "left" 16 times
  experiment <- sample(c("R", "L"), size=16, prob=c(0.5, 0.5), replace=T)
  
  # Count the number of "R"
  right <- sum(experiment == "R")
  
  # Save results
  right_ct[i] <- right
}
# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T1
sum(right_ct <= 2)/nExp + sum(right_ct >= 14)/nExp



# T2
# Define empty vector to save results
right_ct <- c()

# Define number of experiments
nExp <- 100000

# Simulate
for(i in 1:nExp){
  
  # Sample "right" or "left" 15 times
  experiment <- sample(c("R", "L"), size=15, prob=c(0.5, 0.5), replace=T)
  
  # Count the number of "R"
  right <- sum(experiment == "R")
  
  # Save results
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T2
sum(right_ct <= 3)/nExp + sum(right_ct >= 12)/nExp

# T3
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=17, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate p-value for T3
sum(right_ct <= 3)/nExp + sum(right_ct >= 14)/nExp


# T4
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=15, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T4
sum(right_ct <= 0)/nExp + sum(right_ct >= 15)/nExp

# T5
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=16, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T5
sum(right_ct <= 4)/nExp + sum(right_ct >= 12)/nExp

# T6
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=16, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T6
sum(right_ct <= 0)/nExp + sum(right_ct >= 16)/nExp

# T7
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=16, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T7
sum(right_ct <= 1)/nExp + sum(right_ct >= 15)/nExp

# T8
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=16, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T8
sum(right_ct <= 1)/nExp + sum(right_ct >= 15)/nExp

# T9
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=16, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T9
sum(right_ct <= 2)/nExp + sum(right_ct >= 14)/nExp

# T10
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=16, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T10
sum(right_ct <= 1)/nExp + sum(right_ct >= 15)/nExp

# T11
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=15, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T11
sum(right_ct <= 0)/nExp + sum(right_ct >= 15)/nExp

# T12
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=17, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T12
sum(right_ct <= 5)/nExp + sum(right_ct >= 12)/nExp

# T13
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=18, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T13
sum(right_ct <= 2)/nExp + sum(right_ct >= 16)/nExp

# T14
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=18, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T14
sum(right_ct <= 8)/nExp + sum(right_ct >= 10)/nExp

# T15
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=15, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T15
sum(right_ct <= 1)/nExp + sum(right_ct >= 14)/nExp

# T16
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=16, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T16
sum(right_ct <= 1)/nExp + sum(right_ct >= 15)/nExp

# T17
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=16, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T17
sum(right_ct <= 2)/nExp + sum(right_ct >= 14)/nExp

# T18
right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R", "L"), size=16, prob=c(0.5, 0.5), replace=T)
  right <- sum(experiment == "R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value for T18
sum(right_ct <= 7)/nExp + sum(right_ct >= 9)/nExp


# 5.1 Part 2

right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R","L"), size=14, prob=c(0.5,0.5), replace=T)
  right <- sum(experiment=="R")
  right_ct[i] <- right
}

probs <- table(right_ct)/nExp

# Calculate p-value
sum(right_ct <= 3)/nExp + sum(right_ct >= 11)/nExp

# 5.1 Part 3
# Test whether males and females are equally likely to be right-handed

# Count male and female toads
table(toads$Sex)

right_ct <- c()
nExp <- 100000

for(i in 1:nExp){
  experiment <- sample(c("R","R","R","R","R","R","R","R","R","R","R",
                         "N","N","N","N","N","N","N"), size=18, replace=F)
  right <- sum(experiment[1:9]=="R")
  right_ct[i] <- right
}

# Calculate probabilities
probs <- table(right_ct)/nExp

# Calculate p-value
sum(right_ct <= 4)/nExp + sum(right_ct >= 7)/nExp




# 5.2 Part 1

jiang <- read.csv("Jiang2013_data.csv", sep="\t")
head(jiang)

mean_r <- function(taxon){
  values <- jiang$r[jiang$Taxon == taxon]
  mean(values)
}
mean_r("Fish")


# 5.2 Part 2
# Test whether the mean r for fish is unusually high

fish_mean <- mean_r("Fish")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=37, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= fish_mean)/nExp

# 5.2 Part 3

table(jiang$Taxon)

# Test amphibians
amphibian_mean <- mean_r("Amphibian")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=143, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= amphibian_mean)/nExp

# Test birds
bird_mean <- mean_r("Bird")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=52, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= bird_mean)/nExp


# Test crustaceans
crustacean_mean <- mean_r("Crustacean")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=149, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= crustacean_mean)/nExp

# Test insects
insect_mean <- mean_r("Insect")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=106, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= insect_mean)/nExp


# Test chelicerates
chelicerate_mean <- mean_r("Chelicerate")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=9, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= chelicerate_mean)/nExp

# Test gastropods
gastropod_mean <- mean_r("Gastropod")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=10, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= gastropod_mean)/nExp


# Test reptiles
reptile_mean <- mean_r("Reptile")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=8, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= reptile_mean)/nExp

# Test protists
protist_mean <- mean_r("Protist")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=5, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= protist_mean)/nExp


# Test annelids
annelids_mean <- mean_r("Annelids")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=1, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= annelids_mean)/nExp

# Test mammals
mammal_mean <- mean_r("Mammal")

means <- c()
nExp <- 50000

for(i in 1:nExp){
  experiment <- sample(jiang$r, size=1, replace=F)
  means[i] <- mean(experiment)
}

sum(means >= mammal_mean)/nExp
