# Decision making under conditions of certainty / uncertainty
# a)
library(lpSolve)

#Payoff Matrix
payoff <- matrix(
  c(
    10, 5, 8,
    6, 7, 4,
    9, 3, 6
  ), nrow = 3, byrow = TRUE
)
rownames(payoff) <- c("D1", "D2", "D3")
colnames(payoff) <- c("S1","S2","S3")

#MAXIMAX
row_max <- apply(payoff, 1, max)
maximax <- names(which.max(row_max))

#MAXIMIN
row_min <- apply(payoff, 1, min)
maximin <- names(which.max(row_min))

#MINIMAX
max_col <- apply(payoff, 2, max)
regret <- sweep(payoff, 2, max_col, "-")
max_regret <- apply(regret, 1, max)
minimax <- names(which.min(max_regret))

#Final Output
list(
  Maximax = maximax,
  Maximin = maximin,
  Minimax_Regret = minimax
)



# b)
library(lpSolve)

#Payoff Matrix
payoff <- matrix(
  c(
    12, 8, 6,
    10, 9, 7,
    14, 5, 4
  ), nrow = 3, byrow = TRUE
)

rownames(payoff) <- c("D1", "D2", "D3")
colnames(payoff) <- c("S1","S2","S3")

#MAXIMAX
row_max <- apply(payoff, 1, max)
maximax <- names(which.max(row_max))

#MAXIMIN
row_min <- apply(payoff, 1, min)
maximin <- names(which.max(row_min))

#MINIMAX
max_col <- apply(payoff, 2, max)
regret <- sweep(payoff, 2, max_col, "-")
max_regret <- apply(regret, 1, max)
minimax <- names(which.min(max_regret))

#Final Output
list(
  Maximax = maximax,
  Maximin = maximin,
  Minimax_Regret = minimax
)



# c)
library(lpSolve)

#Payoff Matrix
payoff <- matrix(
  c(
    5, 7, 9,
    8, 6, 4,
    6, 10, 3
  ), nrow = 3, byrow = TRUE
)

rownames(payoff) <- c("D1", "D2", "D3")
colnames(payoff) <- c("S1","S2","S3")

#MAXIMAX
row_max <- apply(payoff, 1, max)
maximax <- names(which.max(row_max))

#MAXIMIN
row_min <- apply(payoff, 1, max)
maximin <- names(which.max(row_min))

#MINIMAX
max_col <- apply(payoff, 2, max)
regret <- sweep(payoff, 2, max_col, "-")
max_regret <- apply(regret, 1, max)
minimax <- names(which.min(max_regret))

#Final Output
list(
  Maximax = maximax,
  Maximin = maximin,
  Minimax_Regret = minimax
)



# d)
library(lpSolve)

#Payoff Matrix
payoff <- matrix(
  c(
    25, 15, 10, 5,
    18, 14, 12, 6,
    25, 10, 8, 4 
  ), nrow = 3, byrow = TRUE
)

rownames(payoff) <- c("D1", "D2", "D3")
colnames(payoff) <- c("S1","S2","S3", "S4")

#MAXIMAX
row_max <- apply(payoff, 1, max)
maximax <- names(which.max(row_max))

#MAXIMIN
row_min <- apply(payoff, 1, min)
maximin <- names(which.max(row_min))

#MINIMAX
max_col <- apply(payoff, 2, max)
regret <- sweep(payoff, 2, max_col, "-")
max_regret <- apply(regret, 1, max)
minimax <- names(which.min(max_regret))

#Final Output
list(
  Maximax = maximax,
  Maximin = maximin,
  Minimax_Regret = minimax
)



# e)
library(lpSolve)

#Payoff Matrix
payoff <- matrix(
  c(
    40, 20, 30,
    35, 25, 15,
    45, 10, 20
  ), nrow = 3, byrow = TRUE
)

rownames(payoff) <- c("D1", "D2", "D3")
colnames(payoff) <- c("S1","S2","S3")

#MAXIMAX
row_max <- apply(payoff, 1, max)
maximax <- names(which.max(row_max))

#MAXIMIN
row_min <- apply(payoff, 1, min)
maximin <- names(which.max(row_min))

#MINIMAX
max_col <- apply(payoff, 2, max)
regret <- sweep(payoff, 2, max_col, "-")
max_regret <- apply(regret, 1, max)
minimax <- names(which.min(max_regret))

#Final Output
list(
  Maximax = maximax,
  Maximin = maximin,
  Minimax_Regret = minimax
)
