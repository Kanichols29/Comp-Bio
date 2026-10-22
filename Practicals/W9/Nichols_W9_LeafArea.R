
# Practical 9 - Question 2: Leaf Areas

# Load the EBImage package
library(EBImage)

# Load the professor's getArea function
source("R/DataFiles/leafarea/getArea.R")

# Get the JPG filenames
files <- list.files("R/DataFiles/leafarea", pattern=".JPG")

# Create an empty vector for leaf areas
areas <- c()

# Loop through all the images
for(i in files){
  area <- getArea(paste("R/DataFiles/leafarea/", i, sep=""))
  areas <- c(areas, area)
}

# Display the leaf areas
areas

# Calculate the change in leaf area
growth <- areas[23:44] - areas[1:22]

# Display the growth for each plant
growth

# Calculate the average leaf growth
mean(growth)

# Combine the results for each plant
results <- data.frame(
  Plant=files[1:22],
  t1=areas[1:22],
  t2=areas[23:44],
  Growth=growth
)

# Display the first six plants
head(results)

# Save the leaf area results as a CSV file
write.table(results, file="LeafAreaResults.csv", sep=",", row.names=F, col.names=T)
