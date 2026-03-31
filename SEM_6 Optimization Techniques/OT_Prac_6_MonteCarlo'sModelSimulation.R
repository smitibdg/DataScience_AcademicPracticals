# a)
# Given data
trips <- c(0, 1, 2, 3, 4, 5)
freq <- c(16, 24, 30, 60, 40, 30)

# Probabilities
prob <- freq / sum(freq)
cum_prob <- cumsum(prob)

# Random Numbers (given)
random_numbers <- c(82, 96, 18, 96, 20, 84, 56, 11, 52, 3) / 100

# Simulate demand
simulated_trips <- sapply(random_numbers, function(rn) {
  trips[which(rn <= cum_prob)[1]]
})

# Result
data.frame(
  Week = 1 : 10,
  Random_Number = random_numbers * 100,
  Trips = simulated_trips
)



# b)
# Given data
units <- c(0, 1, 2, 3, 4)
prob <- c(0.10, 0.15, 0.25, 0.30, 0.20)

# Cumulative Probability
cum_prob <- cumsum(prob)

# Random Numbers (given)
random_numbers <- c(5, 18, 37, 62, 91, 44, 78, 10, 56, 83, 29, 66) / 100

# Simulate demand
sim_units <- sapply(random_numbers, function(rn) {
  units[which(rn <= cum_prob)[1]]
})

# Result
data.frame(
  Day = 1 : 12,
  Random_Number = random_numbers * 100,
  Units_Sold = sim_units
)



# c)
# Given data
breakdowns <- c(0, 1, 2, 3, 4)
prob <- c(0.25, 0.35, 0.20, 0.15, 0.05)

# Cumulative Probability
cum_prob <- cumsum(prob)

# Random Numbers (given)
random_numbers <- c(12, 47, 88, 05, 63, 29, 74, 91, 34, 56) / 100

# Simulate demand
sim_breakdowns <- sapply(random_numbers, function(rn) {
  breakdowns[which(rn <= cum_prob)[1]]
})

# Result
data.frame(
  Day = 1 : 10,
  Random_Number = random_numbers * 100,
  Breakdowns = sim_breakdowns
)



# d)
# Given data
bookings <- c(0, 1, 2, 3, 4)
frequency <- c(15, 30, 45, 35, 25)

# Convert frequency to probabilities
prob <- frequency / sum(frequency)

# Cumulative probabilities
cum_prob <- cumsum(prob)

# Given random numbers (as proportions)
rand <- c(22, 71, 9, 55, 88, 34, 64, 17) / 100

# Simulation
sim_bookings <- sapply(rand, function(r) {
  bookings[which(r <= cum_prob)[1]]
})

# Result
data.frame(
  Day = 1:length(rand),
  Random_Number = rand * 100,
  Room_Bookings = sim_bookings
)
