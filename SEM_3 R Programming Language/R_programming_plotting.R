plot(1,3)
plot(c(1, 8), c(3, 10))
plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))
x <- c(1,2,3,4,5)
y  <- c(3,7,8,9,12)
plot(x,y)

plot(1:10)
plot(1:10, type="l")
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")
plot(1:10, col="red")
plot(1:10, cex=2)
plot(1:10, pch=25, cex=2)
plot(1:10, type="l", lwd=2)
plot(1:10, type="l", lwd=5, lty=3)

line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)

plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")
# Create a vector of pies
x <- c(10,20,30,40)

# Display the pie chart
pie(x)

# Create a vector of pies
x <- c(10,20,30,40)

# Display the pie chart and start the first pie at 90 degrees
pie(x, init.angle = 90)

# Create a vector of pies
x <- c(10,20,30,40)

# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Display the pie chart with labels
pie(x, label = mylabel, main = "Fruits")

# Create a vector of colors
colors <- c("red", "yellow", "pink", "brown")

# Display the pie chart with colors
pie(x, label = mylabel, main = "Fruits", col = colors)

# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Create a vector of colors
colors <- c("red", "yellow", "pink", "brown")

# Display the pie chart with colors
pie(x, label = mylabel, main = "Pie Chart", col = colors)

# Display the explanation box
legend("bottomright", mylabel, fill = colors)

