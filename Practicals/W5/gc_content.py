# File containing the turkey sequences
infile = "Python/DataFiles/Turkey_transcripts_15.fasta"

# Dictionary to store sequences
sequences = {}

# Read fasta file
with open(infile, "r") as f:
    for line in f:
        line = line.rstrip()

        if line.startswith(">"):
            gene_id = line.split()[0][1:]
            sequences[gene_id] = ""

        elif line != "":
            sequences[gene_id] = sequences[gene_id] + line

# Calculate GC content and write results to a new file
with open("Practicals/W5/gc_content.txt", "w") as outfile:
    for gene_id, seq in sequences.items():
        gc = (seq.count("G") + seq.count("C")) / len(seq)
        outfile.write(gene_id + "\t" + str(gc) + "\n")