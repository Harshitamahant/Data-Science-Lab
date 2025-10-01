# a) Arguments of sample() function
Syntax: sample(x, size, replace = FALSE, prob = NULL)
x: Vector of elements to choose from
size: Number of items to sample
replace: Sampling with replacement? TRUE/FALSE
prob: Vector of probabilities for weighted sampling

#a Create a simple vector of colors
colors <- c("red", "blue", "green", "yellow", "purple")
# Example 1: Pick 3 colors randomly (without replacement)
result1 <- sample(colors, size = 3)
print(result1)

# Example 2: Pick 5 colors with replacement (same color can appear more than once)
result2 <- sample(colors, size = 5, replace = TRUE)
print(result2)

# Example 3: Pick 4 colors with replacement and given probabilities
# More chances to pick "green"
result3 <- sample(colors, size = 4, replace = TRUE, prob = c(0.1, 0.1, 0.5, 0.2, 0.1))
print(result3)


#b List of student names
students <- c("Amit", "Neha", "Rahul", "Priya", "Sneha", "Karan")
# Pick 3 students randomly without repeating any name
selected_students <- sample(students, size = 3, replace = FALSE)
# Show selected students
print(selected_students)

#c Levels of stress reported by employees
lvl <- c(5, 6, NA, 7, 4, NA, 6)
# Calculate median by ignoring NA (missing) values
median_stress <- median(lvl, na.rm = TRUE)
# Print the result
print(median_stress)


#d Stress levels with missing values
lvl <- c(5, 6, NA, 7, 4, NA, 6)
# Using na.rm = FALSE (default) → result will be NA
median_with_na <- median(lvl, na.rm = FALSE)
print(median_with_na) 
# Using na.rm = TRUE → ignores NA and gives actual median
median_without_na <- median(lvl, na.rm = TRUE)
print(median_without_na)

#d2 Example vector of student grades
grades <- c(45, 78, 90, 32, 66)
# Find positions of grades greater than 60
high_scores <- which(grades > 60)
print(high_scores)  
