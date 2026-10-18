filename = "Gesquiere2011_data.csv"

with open(filename) as f:
    data = f.read()

rows = data.split("\n")

ids = []

for row in rows[1:]:
    if row != "":
        values = row.split()
        ids.append(values[0])

counts = {}

for individual in ids:
    if individual in counts:
        counts[individual] = counts[individual] + 1
    else:
        counts[individual] = 1

with open("Num_samples.csv", "w") as f:
    f.write("maleID,Num_samples\n")

with open("Num_samples.csv", "a") as f:
    for individual in counts:
        f.write(individual + "," + str(counts[individual]) + "\n")