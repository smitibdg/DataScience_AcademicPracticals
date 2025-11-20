#String Vector
v1 <- c("apple", "cherry", "mango")
v1

#Numeric Vector
v2 <- c(1, 2, 3, 4)
v2

#Integer Vector
v3 <- c(10L, 23L, 56L)
v3

#Complex Vector
v4 <- c(2+3i, 4+6i, 8+7i)
v4

#length of the vector
length(v1)
v5 <- as.integer(v2)
v5

#Vector addition
vector_addition <- v2+v5
vector_addition

#Accessing Elements in Vector
v1[1] #1st element
v2[2] #2nd element
v3[-2] #Except 2nd element
v2[c(1,3)]#1st and 3rd element only

#Changing value in vectors
v1[3] <- "Papaya"
v1

#Sorting Vectors
v6 <- sort(v1)
v6

#combining two vectors 
v7 <- c(v1,v2)
v7

