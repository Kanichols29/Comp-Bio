# Practical 8: Statistical Computing in R

## 1. Disease Risks

### Question 1. Total Number of People Sampled

I used `read.table()` to load the genotype data into R. I then added the values in the `nA1A1`, `nA1A2`, and `nA2A2` columns to calculate the total number of individuals genotyped at each site. Since not everyone was genotyped at every site, I used `max()` to find the largest total.

**Code used:**

```r
geno <- read.table("R/DataFiles/H938_Euro_chr6.geno", sep=" ", h=T)
head(geno)

total <- geno$nA1A1 + geno$nA1A2 + geno$nA2A2
max(total)
```

**Result:**

The maximum number of people sampled was **124**.

### Question 2. Using rowSums()

For this question, I used `rowSums()` to add the three genotype-count columns for each site. I selected columns 5 through 7 using `geno[, 5:7]` and then used `max()` to find the largest total.

**Code used:**

```r
totals2 <- rowSums(geno[, 5:7])
max(totals2)
```

**Result:**

The maximum was **124 people**, which matched my answer from Question 1.

### Question 3. Combining Genotype and Disease Risk Data

I used `read.csv()` to load `SNP_risks.csv` into R. I then used `cbind()` to add the third column, which contains the disease risk classification, to the genotype data. I named the new column `Risk` and used `head()` to check the combined data. I also used `nrow()` to confirm that both original datasets contained the same number of rows.

**Code used:**

```r
risks <- read.csv("R/DataFiles/SNP_risks.csv")
head(risks)

geno_risks <- cbind(geno, Risk = risks[,3])
head(geno_risks)

nrow(geno)
nrow(risks)
```

**Result:**

Both datasets contained **43,141 rows**. The combined data included the original genotype columns and an additional `Risk` column identifying sites as `Risk` or `Non-Risk`.

### Question 4. Average Number of Heterozygous Individuals

I used `mean()` to calculate the average number of heterozygous individuals (`nA1A2`) at sites associated with disease risk and at sites not associated with disease risk. I used `==` to select each risk category and calculated the mean separately for each group.

**Code used:**

```r
mean(geno_risks[geno_risks$Risk == "Risk",]$nA1A2)
mean(geno_risks[geno_risks$Risk == "Non-Risk",]$nA1A2)
```

**Results:**

- **Risk sites:** 37.31296 individuals
- **Non-Risk sites:** 36.96878 individuals

On average, slightly more individuals were heterozygous at sites associated with disease risk than at sites not associated with disease risk.


## 2. Data Cleanup

### Question 1. Number of Mammal Species

I used `read.table()` to load `Smith2003_data.txt` into R. Since the file is tab-delimited and does not have column headings, I used `sep="\t"` and `h=F`. I then used `head()` to check that the data loaded correctly and `nrow()` to count the number of rows in the dataset.

**Code used:**

```r
mammals <- read.table("R/DataFiles/Smith2003_data.txt", sep="\t", h=F)
head(mammals)
nrow(mammals)
```

**Result:**

The dataset contains **5,731 rows**, representing 5,731 mammal species entries.

### Question 2. Replacing Missing Values

I used R to replace the missing values in columns 7 and 8 of the mammal dataset. The original file used `-999` to represent missing values, so I used `==` to find those values and replaced them with `NA`. I then used `write.table()` to save the cleaned data in a new tab-delimited file called `Smith2003_clean.txt`.

To check my results, I used `read.table()` to open the cleaned file and `summary()` to confirm that R recognized the missing values.

**Code used:**

```r
mammals[mammals$V7 == -999, 7] <- NA
mammals[mammals$V8 == -999, 8] <- NA

write.table(mammals, file="Smith2003_clean.txt", sep="\t", row.names=F, col.names=F)

clean <- read.table("Smith2003_clean.txt", sep="\t", h=F)
nrow(clean)
summary(clean$V7)
summary(clean$V8)
```

**Results:**

The cleaned file contains **5,731 rows**. Both column 7, which contains log(body mass), and column 8, which contains raw body mass, have **1,372 missing values** recorded as `NA`.

The cleaned data was saved successfully as `Smith2003_clean.txt`.

