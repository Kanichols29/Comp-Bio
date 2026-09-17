# Practical W4

## 6.1 About Me

I created a Python script called about_me.py. The script stores my name, favorite color, favorite activity, and favorite animal in variables. It then uses the print() function to display the information.

#!/usr/bin/env python3

# Define variables that contain information about me
name = "Kaitlyn"
favorite_color = "Blue"
favorite_activity = "Traveling"
favorite_animal = "Dog"

# Print my name and favorite things
print("My name:", name)
print("My favorite color:", favorite_color)
print("My favorite activity:", favorite_activity)
print("My favorite animal:", favorite_animal)

I ran the script from the terminal using:

python3 about_me.py

The output was:

My name: Kaitlyn
My favorite color: Blue
My favorite activity: Traveling
My favorite animal: Dog

The first line of the script is a shebang that specifies Python 3. I created four variables to store my information. I then used the print() function to display the information stored in each variable.

## 6.2 Codon to Amino Acid

In this problem, I used the CodonTable.tsv file to create a dictionary that matches each DNA codon to its amino acid symbol. I then split the given DNA sequence into individual codons, used the dictionary to translate each codon, and saved the amino acid symbols in a list.

# Set the location of the CodonTable file
file = "/Users/kaitlynnichols/IntroBiolComp-2026/Unix/DataFiles/CodonTable.tsv"

# Create a dictionary with codons as keys and amino acid symbols as values
codon_dict = {}

with open(file, "r") as f:
    next(f)
    for line in f:
        columns = line.strip().split()
        codon = columns[0]
        symbol = columns[2]
        codon_dict[codon] = symbol

# Create the DNA sequence
sequence = "CTA GGA GTG ATT TCG"

# Split the sequence into individual codons
codons = sequence.split()

# Create an empty list to store the amino acid sequence
amino_acids = []

# Match each codon to its amino acid symbol
for codon in codons:
    amino_acids.append(codon_dict[codon])

# Print the final amino acid sequence
print("Amino acid sequence:", amino_acids)

The output was:
Amino acid sequence:['L', 'G', 'V', 'I', 'S']

