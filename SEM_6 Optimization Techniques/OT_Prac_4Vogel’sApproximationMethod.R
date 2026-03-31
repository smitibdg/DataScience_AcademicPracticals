# Vogel’s Approximation Method

# a)
# Step 1: Define the cost matrix
cost <- matrix(c(19, 30, 50, 10,
                 70, 30, 40, 60,
                 40, 8, 70, 20),
               nrow = 3, byrow = TRUE)

# Step 2: Define supply and demand

supply <- c(7, 9, 18)
demand <- c(5, 8, 7, 14)

# Number of rows and columns
m <- nrow(cost)
n <- ncol(cost)

# Step 3: Initialize allocation matrix
allocation <- matrix(0, m, n)

# Step 4: Repeat until all supply and demand are satisfied
while (any(supply > 0) & any(demand > 0)) {
  
  # Step 4a: Compute row penalties
  # Penalty = difference between two smallest costs in each row
  row_penalty <- rep(NA, m)
  for (i in 1:m) {
    if (supply[i] > 0) {
      available_costs <- cost[i, demand > 0]
      row_penalty[i] <- ifelse(length(available_costs) > 1,
                               sort(available_costs)[2] - sort(available_costs)[1],
                               available_costs[1])
    }
  }
  
  
  
  # Step 4b: Compute column penalties
  # Penalty = difference between two smallest costs in each column
  col_penalty <- rep(NA, n)
  for (j in 1:n) {
    if (demand[j] > 0) {
      available_costs <- cost[supply > 0, j]
      col_penalty[j] <- ifelse(length(available_costs) > 1,
                               sort(available_costs)[2] - sort(available_costs)[1],
                               available_costs[1])
    }
  }
  
  # Step 4c: Select the highest penalty
  
  if (max(row_penalty, na.rm = TRUE) >= max(col_penalty, na.rm = TRUE)) {
    
    # Choose the row with highest penalty
    i <- which.max(row_penalty)
    
    # Select the minimum cost cell in that row
    j <- which(demand > 0)[which.min(cost[i, demand > 0])]
    
  } else {
    
    # Choose the column with highest penalty
    j <- which.max(col_penalty)
    
    # Select the minimum cost cell in that column
    i <- which(supply > 0)[which.min(cost[supply > 0, j])]
  }
  
  # Step 4d: Allocate as much as possible
  allocation[i, j] <- min(supply[i], demand[j])
  
  # Update supply and demand
  supply[i] <- supply[i] - allocation[i, j]
  demand[j] <- demand[j] - allocation[i, j]
}

# Step 5: Compute total transportation cost
total_cost <- sum(allocation * cost)

# Final results
allocation
total_cost




# b)
# Step 1: Define the cost matrix
cost <- matrix(c(2, 3, 1,
                 5, 4, 8, 
                 5, 6, 8),
               nrow = 3, byrow = TRUE)

# Step 2: Define supply and demand
supply <- c(180, 80, 120)
demand <- c(100, 150, 130)

# Number of rows and columns
m <- nrow(cost)
n <- ncol(cost)

# Step 3: Initialize allocation matrix
allocation <- matrix(0, m, n)

# Step 4: Repeat until all supply and demand are satisfied
while (any(supply > 0) && any(demand > 0)) {
  
  # Step 4a: Compute row penalties
  row_penalty <- rep(NA, m)
  for (i in 1:m) {
    if (supply[i] > 0) {
      available_costs <- cost[i, demand > 0]
      if (length(available_costs) > 1) {
        row_penalty[i] <- sort(available_costs)[2] - sort(available_costs)[1]
      } else {
        row_penalty[i] <- 0
      }
    }
  }
  
  # Step 4b: Compute column penalties
  col_penalty <- rep(NA, n)
  for (j in 1:n) {
    if (demand[j] > 0) {
      available_costs <- cost[supply > 0, j]
      if (length(available_costs) > 1) {
        col_penalty[j] <- sort(available_costs)[2] - sort(available_costs)[1]
      } else {
        col_penalty[j] <- 0
      }
    }
  }
  
  # Step 4c: Select highest penalty
  if (max(row_penalty, na.rm = TRUE) >= max(col_penalty, na.rm = TRUE)) {
    
    # Row selected
    i <- which(row_penalty == max(row_penalty, na.rm = TRUE))[1]
    
    # Minimum cost in selected row
    j <- which(demand > 0)[which.min(cost[i, demand > 0])]
    
  } else {
    
    # Column selected
    j <- which(col_penalty == max(col_penalty, na.rm = TRUE))[1]
    
    # Minimum cost in selected column
    i <- which(supply > 0)[which.min(cost[supply > 0, j])]
  }
  
  # Step 4d: Allocate
  allocation[i, j] <- min(supply[i], demand[j])
  
  # Update supply and demand
  supply[i] <- supply[i] - allocation[i, j]
  demand[j] <- demand[j] - allocation[i, j]
}

# Step 5: Compute total transportation cost
total_cost <- sum(allocation * cost)

# Final results
allocation
total_cost



# c)
# Step 1: Define the cost matrix
cost <- matrix(c(8, 6, 10,
                 9, 7,  4, 
                 3, 4, 2),
               nrow = 3, byrow = TRUE)

# Step 2: Define supply and demand
supply <- c(20, 30, 25)
demand <- c(10, 25, 20)

# Number of rows and columns
m <- nrow(cost)
n <- ncol(cost)
# Step 3: Initialize allocation matrix
allocation <- matrix(0, m, n)

# Step 4: Repeat until all supply and demand are satisfied
while (any(supply > 0) && any(demand > 0)) {
  
  # Step 4a: Compute row penalties
  row_penalty <- rep(NA, m)
  for (i in 1:m) {
    if (supply[i] > 0) {
      available_costs <- cost[i, demand > 0]
      if (length(available_costs) > 1) {
        row_penalty[i] <- sort(available_costs)[2] - sort(available_costs)[1]
      } else {
        row_penalty[i] <- 0
      }
    }
  }
  
  # Step 4b: Compute column penalties
  col_penalty <- rep(NA, n)
  for (j in 1:n) {
    if (demand[j] > 0) {
      available_costs <- cost[supply > 0, j]
      if (length(available_costs) > 1) {
        col_penalty[j] <- sort(available_costs)[2] - sort(available_costs)[1]
      } else {
        col_penalty[j] <- 0
      }
    }
  }
  
  # Step 4c: Select highest penalty
  if (max(row_penalty, na.rm = TRUE) >= max(col_penalty, na.rm = TRUE)) {
    
    # Row selected
    i <- which(row_penalty == max(row_penalty, na.rm = TRUE))[1]
    
    # Minimum cost in selected row
    j <- which(demand > 0)[which.min(cost[i, demand > 0])]
    
  } else {
    
    # Column selected
    j <- which(col_penalty == max(col_penalty, na.rm = TRUE))[1]
    
    
    
    # Minimum cost in selected column
    i <- which(supply > 0)[which.min(cost[supply > 0, j])]
  }
  
  # Step 4d: Allocate
  allocation[i, j] <- min(supply[i], demand[j])
  
  # Update supply and demand
  supply[i] <- supply[i] - allocation[i, j]
  demand[j] <- demand[j] - allocation[i, j]
}

# Step 5: Compute total transportation cost
total_cost <- sum(allocation * cost)

# Final results
allocation
total_cost



# d)
# Step 1: Define the cost matrix (add dummy row)
cost <- matrix(c(4, 6, 8,
                 5, 7, 6,
                 0, 0, 0),   # Dummy source
               nrow = 3, byrow = TRUE)

# Step 2: Define supply and demand
supply <- c(15, 25, 15)   # Dummy supply added
demand <- c(10, 20, 25)

# Number of rows and columns
m <- nrow(cost)
n <- ncol(cost)

# Step 3: Initialize allocation matrix
allocation <- matrix(0, m, n)

# Step 4: Vogel’s Approximation Method
while (any(supply > 0) && any(demand > 0)) {
  
  # Row penalties
  row_penalty <- rep(NA, m)
  for (i in 1:m) {
    if (supply[i] > 0) {
      available_costs <- cost[i, demand > 0]
      row_penalty[i] <- if (length(available_costs) > 1)
        sort(available_costs)[2] - sort(available_costs)[1]
      else 0
    }
  }
  
  # Column penalties
  col_penalty <- rep(NA, n)
  for (j in 1:n) {
    if (demand[j] > 0) {
      available_costs <- cost[supply > 0, j]
      col_penalty[j] <- if (length(available_costs) > 1)
        sort(available_costs)[2] - sort(available_costs)[1]
      else 0
    }
  }
  
  # Select highest penalty
  if (max(row_penalty, na.rm = TRUE) >= max(col_penalty, na.rm = TRUE)) {
    i <- which(row_penalty == max(row_penalty, na.rm = TRUE))[1]
    j <- which(demand > 0)[which.min(cost[i, demand > 0])]
  } else {
    j <- which(col_penalty == max(col_penalty, na.rm = TRUE))[1]
    i <- which(supply > 0)[which.min(cost[supply > 0, j])]
  }
  
  # Allocate
  allocation[i, j] <- min(supply[i], demand[j])
  supply[i] <- supply[i] - allocation[i, j]
  demand[j] <- demand[j] - allocation[i, j]
}


# Step 5: Total transportation cost
total_cost <- sum(allocation * cost)

# Results
allocation
total_cost
