#Declaring Matrix
m1 <- matrix(1:12, nrow = 4, ncol = 3)
m1

#Renaming Columns & Rows
row_name <- c('r1', 'r2', 'r3', 'r4')
col_name <- c('c1', 'c2', 'c3')

m2 <- matrix(1:12, nrow = 4, ncol = 3, dimnames = list(row_name,col_name))
m2

#Matrix filling by row
m3 <- matrix(13:24, nrow = 4, ncol = 3, byrow = TRUE)
m3

# Multiplying matrices using operator
m <- matrix(1:8, nrow=2)
n <- matrix(8:15, nrow=4)
m
n
print(m %*% n)

#accessing Elements in Matrix
m1[1,] #all 1st row elements
m1[,2] # all 2nd column elements 
m1[2,3] # 2nd row 3rd column element

#adding new rows elemwnts to matrix

m1 <- rbind(m1, c(13, 14, 15))
m1

#adding new column elements to matrix
m1 <- cbind(m1, c(16, 17, 18, 19, 20))
m1

