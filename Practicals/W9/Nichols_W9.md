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

My R script is saved as `Nichols_W9.R`, and the complete results are saved in `MatrixStats.tsv`. Both files are included in my `Practicals/W9` folder.
