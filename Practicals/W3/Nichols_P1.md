# Week 1 Practical

## Kaitlyn Nichols

## Section 3.1

### 1. Navigate to my home directory
To navigate to my home directory, I typed:
cd/Users/kaitlynnichols

### 2. Navigate to a directory that contains work
To navigate to a directory that contains work, I typed:
cd /Users/kaitlynnichols/Movies

### 3. Navigate to the DataFiles directory within Python
I typed:
cd /Users/kaitlynnichols/IntroBiolComp-2026/Python/DataFiles

### 4. Navigate to sandbox within Unix
I typed:
cd /Users/kaitlynnichols/IntroBiolComp-2026/Unix/sandbox


## Section 3.3

### 1. Navigate to the DataFiles directory
I typed:
cd /Users/kaitlynnichols/IntroBiolComp-2026/Python/DataFiles

### 2. Count the number of lines in BeeSpecies.txt
I typed:
wc -l BeeSpecies.txt

There are 19509 lines.

### 3. Count the number of words in CodonTable.tsv
First, I typed:
cd/Users/kaitlynnichols/IntroBiolComp-2026/Unix/DataFiles

Then I typed:
wc -w CodonTable.tsv

There are 195 words.

### 4. Display the last line of CodonTable.tsv
I typed:
tail -n 1 CodonTable.tsv

The last codon is:
TTT Phe F


## Section 5.1

I created a file named Nichols_P1.txt inside the Practicals/W3 directory and added my Week 1 practical answers to the file.

I added the file to Git using:
git add Nichols_P1.txt

I committed the file using:
git commit -m "Add Week 1 practical"

I synchronized the repository using:
git pull --rebase origin main

I pushed the file to GitHub using:
git push


## Section 5.2

### Semicolon-delimited to comma-delimited

I created a shell script called:
semicolon_csv_converter.sh

The script contains:

#!/bin/bash

input_file=$1

output_file="${input_file%.csv}_comma.csv"

tr ';' ',' < "$input_file" > "$output_file"

I created a test semicolon-delimited file using:
echo "Name;Age;City" > test.csv

echo "Kaitlyn;21;Blacksburg" >> test.csv

I ran the converter script using:
bash semicolon_csv_converter.sh test.csv

I checked the converted file using:
cat test_comma.csv

The output was:
Name,Age,City
Kaitlyn,21,Blacksburg
