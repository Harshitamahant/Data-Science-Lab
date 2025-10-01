# Create the data frame
pets <- data.frame(
  Name = c("Flipper", "Bromley", "Nox", "Orion", "Dagger", "Zizi", "Carrie"),
  Months_old = c(53, 19, 34, 41, 84, 140, 109),
  Size = c("medium", "small", "medium", "large", "small", "extra small", "large"),
  Weight = c(21, 8, 4, 6, 7, 2, 36),
  Breed = c("dog", "dog", "cat", "cat", "dog", "cat", "dog")
)

# Check the data frame
print(pets)
#1&2

levels(pets$Breed)

levels(pets$Breed) <- c("dog", "cat")  

# Invert them
pets$Breed <- factor(pets$Breed, levels = c("dog", "cat"))
pets$Breed <- ifelse(pets$Breed == "dog", "cat", "dog")
pets$Breed <- as.factor(pets$Breed)  


print(pets$Breed)

#c

pets$Size

pets[, "Size"]

#d
pets$Age_in_years <- pets$Months_old / 12
print(pets)


#E
# Frequency table
table(pets$Breed, pets$Size)

#f
# Compute average weight per breed
aggregate(Weight ~ Breed, data = pets, FUN = mean)

#g
# Boxplot of Weight by Breed
boxplot(Weight ~ Breed, data = pets,
        main = "Weight by Breed",
        xlab = "Breed",
        ylab = "Weight (kg)",
        col = c("orange", "skyblue"))
