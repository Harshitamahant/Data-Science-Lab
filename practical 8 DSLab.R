# Create the data frame
pets <- data.frame(
  Name = c("Flipper", "Bromley", "Nox", "Orion", "Dagger", "Zizi", "Carrie"),
  Months_old = c(53, 19, 34, 41, 84, 140, 109),
  Size = c("medium", "small", "medium", "large", "small", "extra small", "large"),
  Weight = c(21, 8, 4, 6, 7, 2, 36),
  Breed = c("dog", "dog", "cat", "cat", "dog", "cat", "cat")
)
# Check the data frame
print(pets)

# Check breed levels
levels(pets$Breed)
# Change factor levels
levels(pets$Breed) <- c("dog", "cat")

# Invert breed levels (dog <-> cat)
pets$Breed <- factor(pets$Breed, levels = c("dog", "cat"))
pets$Breed <- ifelse(pets$Breed == "dog", "cat", "dog")
pets$Breed <- as.factor(pets$Breed)
# Print updated breed
print(pets$Breed)

# Print the size column
pets$Size
# Alternative way
pets[, "Size"]

# Add age in years
pets$Age_in_years <- pets$Months_old / 12
# Print updated dataframe
print(pets)

# Frequency table of Breed vs Size
table(pets$Breed, pets$Size)

# Average weight per breed
aggregate(Weight ~ Breed, data = pets, FUN = mean)

# Boxplot of weight by breed
boxplot(Weight ~ Breed, data = pets,
        main = "Weight by Breed",
        xlab = "Breed",
        ylab = "Weight (kg)",
        col = "skyblue")

