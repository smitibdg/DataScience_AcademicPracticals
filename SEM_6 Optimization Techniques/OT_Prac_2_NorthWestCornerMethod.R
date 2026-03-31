# a)
# Balanced
# Supply and Demand
supply <- c(20, 30, 25)
demand <- c(10, 25, 40)

# Cost Matrix
cost <- matrix(c(
  8, 6, 10,
  9, 7, 4,
  3, 4, 2
), nrow = 3, byrow = TRUE)

# Initialize allocation matrix
allocation <- matrix(0, nrow=3, ncol=3)

i <- 1 # Row (source)
j <- 1 # Column (destination)

while (i <= length(supply) && j <= length(demand)) {
  # Allocate min(supply, demand)
  x <- min(supply[i], demand[j])
  allocation[i,j] <- x

  # Update supply and demand
  supply[i] <- supply[i] - x
  demand[j] <- demand[j] - x

  # Move to next row or column
  if (supply[i] == 0) {
    i <- i + 1
  } else {
    j <- j + 1
  }
}

allocation

total_cost <- sum(allocation * cost)
total_cost


# b)
# Balanced
# Supply and Demand
supply <- c(30, 40, 30)
demand <- c(20, 50, 30)

# Cost Matrix
cost <- matrix(c(
  4, 8, 5,
  6, 7, 3,
  5, 4, 6
), nrow = 3, byrow = TRUE)

# Initialize allocation matrix
allocation <- matrix(0, nrow=3, ncol=3)

i <- 1 # Row (source)
j <- 1 # Column (destination)

while (i <= length(supply) && j <= length(demand)) {
  # Allocate min(supply, demand)
  x <- min(supply[i], demand[j])
  allocation[i,j] <- x
  
  # Update supply and demand
  supply[i] <- supply[i] - x
  demand[j] <- demand[j] - x
  
  # Move to next row or column
  if (supply[i] == 0) {
    i <- i + 1
  } else {
    j <- j + 1
  }
}

allocation

total_cost <- sum(allocation * cost)
total_cost