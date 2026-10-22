
# Practical 9 - File Processing

# Get the names of the files
files <- list.files("R/DataFiles/Saavedra2013")

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

# Combine the results into one table
results <- data.frame(File=files, Nrow=rows, Ncol=cols, p_1=p_1, p_0=p_0)

# Display the table
head(results)

# Save the results as a tab-delimited file
write.table(results, file="MatrixStats.tsv", sep="\t", row.names=F, col.names=T)
