# Week 11 Practical
# 5.1 pch Symbols

# Create an empty plot
plot(0, 0, type="n",
     xlim=c(0, 11), ylim=c(0, 7),
     xlab="", ylab="", axes=F)

# Add the first row of symbols (0-4)
points(c(2, 4, 6, 8, 10), rep(6, 5),
       pch=0:4, cex=1.5)
text(c(1, 3, 5, 7, 9),
     rep(6, 5), labels=0:4)

# Add the second row of symbols (5-9)
points(c(2, 4, 6, 8, 10), rep(5, 5),
       pch=5:9, cex=1.5)
text(c(1, 3, 5, 7, 9),
     rep(5, 5), labels=5:9)

# Add the third row of symbols (10-14)
points(c(2, 4, 6, 8, 10), rep(4, 5),
       pch=10:14, cex=1.5)
text(c(1, 3, 5, 7, 9),
     rep(4, 5), labels=10:14)

# Add the fourth row of symbols (15-19)
points(c(2, 4, 6, 8, 10), rep(3, 5),
       pch=15:19, cex=1.5)
text(c(1, 3, 5, 7, 9),
     rep(3, 5), labels=15:19)

# Add the fifth row of symbols (20-24)
points(c(2, 4, 6, 8, 10), rep(2, 5),
       pch=20:24, cex=1.5)
text(c(1, 3, 5, 7, 9),
     rep(2, 5), labels=20:24)

# Add the final symbol (25)
points(2, 1, pch=25, cex=1.5)
text(1, 1, labels=25)

box ()

# 5.2 Recreate a Figure
# Load the student data
students <- read.csv("journal.pone.0297930.s003.csv")

# View the first six rows
head(students)

# Recreate the scatterplot from Figure 9
plot(students$Attitude, students$Score,
     xlab="Attitude toward Mathematics",
     ylab="Mathematics Exam Score",
     main="Student Attitudes and Exam Scores",
     pch=16)




