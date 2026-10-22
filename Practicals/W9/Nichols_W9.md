# Practical 9: File Processing

## Question 1: Matrix Statistics

For this practical, I used R to read the files in the `R/DataFiles/Saavedra2013` folder and calculate statistics for each matrix.

I first used `list.files()` to get the filenames. Then, I created empty vectors to store the results. I used a `for` loop to go through each file and `read.table()` to load the matrices.

For each matrix, I used `nrow()` and `ncol()` to find the number of rows and columns. I also used `mean(mat == 1)` and `mean(mat == 0)` to calculate the proportion of 1s and 0s.

After processing all 59 files, I combined the results into a data frame with five columns: `File`, `Nrow`, `Ncol`, `p_1`, and `p_0`.

I saved the results in a tab-delimited file called `MatrixStats.tsv` using `write.table()`.

## Results

The script successfully processed all 59 matrices.

For example, `n1.txt` contained 97 rows and 80 columns. The proportion of 1s was approximately 0.0459, and the proportion of 0s was approximately 0.9541.

My R script is saved as `Nichols_W9.R`, and the complete results are saved in `MatrixStats.tsv`. 


## Question 2: Leaf Areas

For this question, I used R to calculate the leaf area of plants at two different time points to see how much they grew.

I first loaded the `EBImage` package and used `source()` to load the `getArea()` function provided for the assignment. Then, I used `list.files()` to get the JPG filenames from the `R/DataFiles/leafarea` folder.

I created an empty vector to store the leaf areas and used a `for` loop to go through all 44 images. For each image, I used `getArea()` to calculate the leaf area in pixels and stored the result in the vector.

Next, I calculated the change in leaf area for each plant by subtracting the area at time point `t1` from the area at time point `t2`. There were 22 plants total, and I used `mean()` to calculate their average growth.

I combined the results into a data frame with four columns: `Plant`, `t1`, `t2`, and `Growth`. I then saved the results as a comma-separated file called `LeafAreaResults.csv` using `write.table()`.

### Results

The average increase in leaf area between time points `t1` and `t2` was approximately **7,097.455 pixels**.

For example, plant `B101m` had a leaf area of 28,802 pixels at `t1` and 36,299 pixels at `t2`, giving an increase of 7,497 pixels.

All 22 plants showed an increase in leaf area between the two time points.

My R script is saved as `Nichols_W9_LeafArea.R`, and the complete results are saved in `LeafAreaResults.csv`. 
