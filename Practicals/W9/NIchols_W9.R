# Practical 9 - File Processing

# Get the names of the files
files <- list.files("R/DataFiles/Saavedra2013")
files 

# Read the first matrix
mat <- read.table("R/DataFiles/Saavedra2013/n1.txt", h=F)

# Check the number of rows and columns
nrow(mat)
ncol(mat)

# Calculate the proportion of 1s and 0s
mean(mat == 1)
mean(mat == 0)

# Loop through all the files
for(i in files){
  mat <- read.table(paste("R/DataFiles/Saavedra2013/", i, sep=""), h=F)
  print(nrow(mat))
  print(ncol(mat))
}

# Loop through all the files
for(i in files){
  mat <- read.table(paste("R/DataFiles/Saavedra2013/", i, sep=""), h=F)
  print(nrow(mat))
  print(ncol(mat))
  print(mean(mat == 1))
  print(mean(mat == 0))
}


# Create an empty vector for row counts
rows <- c()

# Loop through all the files
for(i in files){
  mat <- read.table(paste("R/DataFiles/Saavedra2013/", i, sep=""), h=F)
  rows <- c(rows, nrow(mat))
}

# Display the row counts
rows



# Create empty vectors for the results
rows <- c()
cols <- c()
p_1 <- c()
p_0 <- c()

# Loop through all the files
for(i in files){
  mat <- read.table(paste("R/DataFiles/Saavedra2013/", i, sep=""), h=F)
  
  rows <- c(rows, nrow(mat))
  cols <- c(cols, ncol(mat))
  p_1 <- c(p_1, mean(mat == 1))
  p_0 <- c(p_0, mean(mat == 0))
}

# Display the results
rows
cols
p_1
p_0

# Combine the results into one table
results <- data.frame(File=files, Nrow=rows, Ncol=cols, p_1=p_1, p_0=p_0)

# Display the table
head(results)

# Save the results as a tab-delimited file
write.table(results, file="MatrixStats.tsv", sep="\t", row.names=F, col.names=T)