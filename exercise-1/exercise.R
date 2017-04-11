# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
Seahawks.points.scored <- c(31,31,20,6)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
Seahawks.points.allowed <- c(24, 25, 25, 6)

# Combine your two vectors into a dataframe
games <- data.frame(Seahawks.points.scored, Seahawks.points.allowed)

# Create a new column "diff" that is the difference in points
games$diff <- Seahawks.points.scored - Seahawks.points.allowed

# Create a new column "won" which is TRUE if the Seahawks wom
games$won <- games$diff > 0

# Create a vector of the opponents
opponents <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
rownames(games) <- opponents
