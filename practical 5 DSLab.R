#a)
#usig dim()
data <- c("dark", "king",
          "dark", "queen",
          "dark", "pawn",
          "dark", "pawn",
          "dark", "knight",
          "light", "bishop",
          "light", "king",
          "light", "rook",
          "light", "pawn",
          "light", "pawn")
dim(data) <- c(10,2)
colnames(data) <- c("player","Piece")
data
#----------------------------------------------------------------------------   

data <- c("dark", "king",
          "dark", "queen",
          "dark", "pawn",
          "dark", "pawn",
          "dark", "knight",
          "light", "bishop",
          "light", "king",
          "light", "rook",
          "light", "pawn",
          "light", "pawn")

m1 <- matrix(data, ncol = 2, byrow = TRUE)
colnames(m1) <- c("Player", "Piece")
m1
#----------------------------------------------------------------------------

players <- c(rep("dark", 5), rep("light", 5))
pieces <- c("king", "queen", "pawn", "pawn", "knight",
            "bishop", "king", "rook", "pawn", "pawn")
m2 <- cbind(Player = players, Piece = pieces)
m2
#----------------------------------------------------------------------------

#c
colnames(m1) <- c("Player", "Piece")
m1
m2 <- cbind(Player = players, Piece = pieces)
m2
dimnames(m1) <- list(NULL, c("Player", "Piece"))
m1
#----------------------------------------------------------------------------
#4)
row1 <- c("dark", "king")
row2 <- c("dark", "queen")
row3 <- c("dark", "pawn")
row4 <- c("dark", "pawn")
row5 <- c("dark", "kight")
row6 <- c("light", "bishop")
row7 <- c("light", "king")
row8 <- c("light", "rook")
row9 <- c("light", "pawn")
row10 <- c("light", "pawn")
# ...
matrix_rbind <- rbind(row1, row2,row3,row4, row5, row6, row7, row8, row9, row10) # continue for all rows
matrix_rbind
#-------------------------------------------------------------------------------------------------------
m <- matrix(ncol = 2, nrow = 0)
colnames(m) <- c("Player", "Piece")
m 


# Add a row dynamically
new_row <- c("dark", "rook")
m <- rbind(m, new_row)
new_row
