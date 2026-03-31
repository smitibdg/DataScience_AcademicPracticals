# a)
library(lpSolve)

objective <- c(3, 5)

constraints <- matrix(c(
  1, 2,
  3, 2
), nrow = 2, byrow = TRUE)

directions <- c ("<=", "<=")

rhs <- c(6, 12)

result <- lp(direction = "max",
		 objective.in = objective,
		 const.mat = constraints, 
		 const.dir = directions,
		 const.rhs = rhs)

print(result)

cat("Optimal Z value: ", result$objval, "\n")
cat("Optimal values of x1 and x2: ", result$solution, "\n")


# b)
library(lpSolve)

objective <- c(4, 3)

constraints <- matrix(c(
  2, 1,
  1, 2
), nrow = 2, byrow = TRUE)

directions <- c ("<=", "<=")

rhs <- c(8, 10)

result <- lp(direction = "max",
             objective.in = objective,
             const.mat = constraints, 
             const.dir = directions,
             const.rhs = rhs)

print(result)

cat("Optimal Z value: ", result$objval, "\n")
cat("Optimal values of x1 and x2: ", result$solution, "\n")


# c)
library(lpSolve)

objective <- c(5, 2, 3)

constraints <- matrix(c(
  1, 1, 1,
  2, 0, 3
), nrow = 2, byrow = TRUE)

directions <- c ("<=", "<=")

rhs <- c(7, 12)

result <- lp(direction = "max",
             objective.in = objective,
             const.mat = constraints, 
             const.dir = directions,
             const.rhs = rhs)

print(result)

cat("Optimal Z value: ", result$objval, "\n")
cat("Optimal values of x1, x2 and x3: ", result$solution, "\n")


# d)
library(lpSolve)

objective <- c(3, 4)

constraints <- matrix(c(
  2, 1,
  1, 3
), nrow = 2, byrow = TRUE)

directions <- c (">=", ">=")

rhs <- c(8, 9)

result <- lp(direction = "min",
             objective.in = objective,
             const.mat = constraints, 
             const.dir = directions,
             const.rhs = rhs)

print(result)

cat("Optimal Z value: ", result$objval, "\n")
cat("Optimal values of x1 and x2: ", result$solution, "\n")


# e)
library(lpSolve)

objective <- c(6, 4, 5)
constraints <- matrix(c(
  2, 3, 1,
  1, 4, 2,
  3, 1, 4
), nrow = 3, byrow = TRUE)

directions <- c (">=", "=", "<=")

rhs <- c(18, 20, 30)

result <- lp(direction = "min",
             objective.in = objective,
             const.mat = constraints, 
             const.dir = directions,
             const.rhs = rhs)

print(result)

cat("Optimal Z value: ", result$objval, "\n")
cat("Optimal values of x1, x2 and x3: ", result$solution, "\n")