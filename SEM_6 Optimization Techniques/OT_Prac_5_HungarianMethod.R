# Hungarian Method
# a)
library(lpSolve)

cost <- matrix(c(
  9, 2, 7, 
  6, 4, 3, 
  5, 8, 1 
), nrow = 3, byrow = TRUE)

cat("Cost Matrix:\n")
print(cost)

result <- lp.assign(cost)

assignment_matrix <- result$solution

cat("\nAssignment Matrix:\n")
print(assignment_matrix)

total_cost <- sum(cost * assignment_matrix)
cat("\nMinimum Total Cost:", total_cost, "\n")



# b)
library(lpSolve)

cost_matrix <- matrix(
  c(10, 5, 8, 7,
    6, 9, 4, 3,
    7, 8, 6, 9,
    5, 6, 7, 8),
  nrow = 4,byrow = TRUE
)

cat("Cost Matrix:\n")
print(cost_matrix)

result <- lp.assign(cost_matrix)

assignment_matrix <- result$solution

cat("\nAssignment Matrix:\n")
print(assignment_matrix)

total_cost <- sum(cost_matrix * assignment_matrix)
cat("\nMinimum Total Cost:", total_cost, "\n")



# c)
library(lpSolve)

cost_matrix <- matrix(
  c(4, 6, 8,
    5, 3, 7,
    6, 4, 5),
  nrow = 3,
  byrow = TRUE
)

cat("Cost Matrix:\n")
print(cost_matrix)

result <- lp.assign(cost_matrix)

assignment_matrix <- result$solution

cat("\nAssignment Matrix:\n")
print(assignment_matrix)

total_cost <- sum(cost_matrix * assignment_matrix)
cat("\nMinimum Total Cost:", total_cost, "\n")



# d)
library(lpSolve)

cost_matrix <- matrix(
  c(8, 6, 7, 5,
    6, 7, 8, 6),
  nrow = 2,byrow = TRUE
)

cat("Cost Matrix:\n")
print(cost_matrix)

dummy_rows <- matrix(0,nrow=2,ncol=ncol(cost_matrix))
cost_matrix_balanced <- rbind(cost_matrix, dummy_rows)
result <- lp.assign(cost_matrix_balanced)

assignment_matrix <- result$solution

cat("\nAssignment Matrix:\n")
print(assignment_matrix)

total_cost <- sum(cost_matrix_balanced * assignment_matrix)
cat("\nMinimum Total Cost:", total_cost, "\n")



# e)
library(lpSolve)

cost_matrix <- matrix(
  c(9, 2,
    6, 4,
    5, 7),
  nrow = 3,
  byrow = TRUE
)

dummy_columns <- matrix(0, nrow = 3, ncol = ncol(cost_matrix)-1)
cost_matrix_balanced <- cbind(cost_matrix, dummy_columns)

result <- lp.assign(cost_matrix_balanced)

assignment_matrix <- result$solution

cat("\nAssignment Matrix:\n")
print(assignment_matrix)

total_cost <- sum(cost_matrix * assignment_matrix[, 1:ncol(cost_matrix)])
cat("\nMinimum Total Cost:", total_cost, "\n")
