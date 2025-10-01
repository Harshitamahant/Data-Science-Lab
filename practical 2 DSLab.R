# a Creating logical vector
monster <- c(TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)
print(monster)
typeof(monster)    

#b Create a character vector
yugioh <- c("DarkMagician", "BlueEyes", "Exodia")
print(yugioh)
typeof(yugioh)     

#c Combine the monster and vector & check type
combined <- c(monster, yugioh)
print(combined)
typeof(combined)   

#d Combine  atk(numeric) and monster into coerce.check]
# Numeric vector
atk <- c(2500, 3000, 1000, 1500)
# Combine with logical vector
coerce.check <- c(atk, monster)
print(coerce.check)
typeof(coerce.check)  

#e Explicit Type Conversion Using as.*()Functions
# Logical to numeric
as.numeric(monster)    # TRUE=1, FALSE=0
# Numeric to character
as.character(atk)
# Character to factor
as.factor(yugioh)
# Factor to numeric (gives level numbers)
as.numeric(as.factor(yugioh))

#f Label Encoding & One-Hot Encoding in R
cards <- c("DarkMagician", "BlueEyes", "BlueEyes", "Exodia")
# Convert to factor then numeric
label_encoded <- as.numeric(as.factor(cards))
print(label_encoded)

# Convert to factor first
cards_factor <- factor(cards)
# One-hot encoding
one_hot <- model.matrix(~ cards_factor - 1)
print(one_hot)
