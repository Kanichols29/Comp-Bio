# Disease Risks - Question 1

geno <- read.table("R/DataFiles/H938_Euro_chr6.geno", sep=" ", h=T)
head(geno)
total <- geno$nA1A1 + geno$nA1A2 + geno$nA2A2
max(total)

# Disease Risks - Question 2

totals2 <- rowSums(geno[, 5:7])
max(totals2)

# Disease Risks - Question 3

risks <- read.csv("R/DataFiles/SNP_risks.csv")
head(risks)

geno_risks <- cbind(geno, Risk = risks[,3])
head(geno_risks)

nrow(geno)
nrow(risks)


# Disease Risks - Question 4

mean(geno_risks[geno_risks$Risk == "Risk",]$nA1A2)
mean(geno_risks[geno_risks$Risk == "Non-Risk",]$nA1A2)

# Data Cleanup - Question 1

mammals <- read.table("R/DataFiles/Smith2003_data.txt", sep="\t", h=F)
head(mammals)
nrow(mammals)

# Data Cleanup - Question 2

mammals[mammals$V7 == -999, 7] <- NA
mammals[mammals$V8 == -999, 8] <- NA
write.table(mammals, file="Smith2003_clean.txt", sep="\t", row.names=F, col.names=F)
clean <- read.table("Smith2003_clean.txt", sep="\t", h=F)

nrow(clean)
summary(clean$V7)
summary(clean$V8)
