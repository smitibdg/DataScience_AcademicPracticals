# a)
# Least Cost Method 
supply <- c(20, 30, 25)
demand <- c(10, 35, 30)

cost <- matrix(c(
  2, 3, 1, 
  5, 4, 8, 
  5, 6, 8
), nrow = 3, byrow = TRUE)

allocation <- matrix(0, nrow = 3, ncol = 3)
original_cost <- cost

# Least Cost Method
while (any(supply > 0) && any(demand > 0)) {
  # Find minimum cost among feasible cells
  feasible_costs <- cost
  feasible_costs[supply == 0, ] <- Inf
  feasible_costs[, demand == 0] <- Inf
  min_cost <- min(feasible_costs)
  pos <- which(feasible_costs == min_cost, arr.ind = TRUE)[1, ]
  i <- pos[1]
  j <- pos[2]
  # Allocate
  qty <- min(supply[i], demand[j])
  allocation[i, j] <- qty
  supply[i] <- supply[i] - qty
  demand[j] <- demand[j] - qty
  # Eliminate exhausted row or column
  if (supply[i] == 0) {
    cost[i, ] <- Inf
  }
  if (demand[j] == 0) {
    cost[, j] <- Inf
  }
}

allocation

total_cost <- sum(allocation * original_cost)
total_cost


# b)
supply <- c(20, 30, 25)
demand <- c(10, 15, 25, 25)

cost <- matrix(c(
  4, 6, 8, 13, 
  5, 11, 9, 7, 
  10, 8, 7, 6
), nrow = 3, byrow = TRUE)

# Store original cost for total cost calculation
original_cost <- cost

# Initialize allocation matrix with correct dimensions
allocation <- matrix(0, nrow = length(supply), ncol = length(demand))

# Least Cost Method
while (any(supply > 0) && any(demand > 0)) {
  
  # Find minimum cost among feasible cells
  feasible_costs <- cost
  feasible_costs[supply == 0, ] <- Inf
  feasible_costs[, demand == 0] <- Inf
  
  min_cost <- min(feasible_costs)
  pos <- which(feasible_costs == min_cost, arr.ind = TRUE)[1, ]
  
  i <- pos[1]
  j <- pos[2]
  
  # Allocate
  qty <- min(supply[i], demand[j])
  allocation[i, j] <- qty
  
  supply[i] <- supply[i] - qty
  demand[j] <- demand[j] - qty
  
  # Eliminate exhausted row or column
  if (supply[i] == 0) {
    cost[i, ] <- Inf
  }
  if (demand[j] == 0) {
    cost[, j] <- Inf
  }
}

cat("Allocation Matrix (Least Cost Method):\n")
print(allocation)

total_cost <- sum(allocation * original_cost)
cat("\nTotal Transportation Cost:", total_cost, "\n")
