#Create a vector x storing the sequence 10 to 20
x <- c(10:20)
print(x)

#a.Add 2 to x and save it in variable y
y <- x + 2
print(y)

#b.Multiply y by 3 and save it in variable z
z <- y * 3
print(z)

#d.Subtract 6 from z, divide result by 3, save in 'answer'
a <- (z -6)/3
print(a)

#e.Try the entire operation in one line
answer2 <- ((x + 2) * 3 - 6) / 3
print(answer2)

#h.(i)Using seq() to generate numbers from 1 to 12 with a step of 0.5
print(seq(1, 12, 0.5))

#h.(ii)Generate cube values of numbers from 1 to 10
print(seq(1:10)^3)

#i. Define the vector
v <- c(3, 7, 2, 7, 4, 7, 1, 7, 9)
#Define the value to count
target_value <- 7
# Count occurrences of the target value
count <- sum(v == target_value)
# Print the result
cat("The value", target_value, "occurs", count, "times in the vector.\n")

#j. Define the vectors
a <- c(20, 3, 4, 5, 7)
b <- c(3, 5, 6, 8, 7, 20)
c <- c(23, 4, 6, 7, 20)
result <- intersect(intersect(a, b), c)
# Print the result
print(result)

#k.Create the forward and reverse sequences
forward <- 1:20
backward <- 19:1
# Combine them
final_vector <- c(forward, backward)
# Print the final vector
print(final_vector)

value<-12
my_vector<-c(12,4,5,6,8,12,5)
sum(my_vector==value)

#m
quotes <- c("Data is the new oil",
            "Big data means big responsibility", 
            "Clean data is gold")

matches <- grepl("data", quotes, ignore.case = TRUE)
cat(quotes[matches], sep = "\n")
