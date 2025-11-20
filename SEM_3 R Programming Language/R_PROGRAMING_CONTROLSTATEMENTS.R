# CONTROL STATEMENTS
# if statement
x <- 3
if (x>0){
  print("The number is positive")
}
print("outside if statement")



# if....else statement
x <- 12
if (x>0){
  print("x is a positive number")
} else{
  print("x is a negative number")
}


# if....else if....else statement
x <- 0 
if(x>0){
  print("x is a positive number")
} else if (x<0){
  print("x is a negative number")
} else{
  print("x is zero")
}



# Nested if....else statement
x <- -20

if (x > 0) {
  
  if (x %% 2 == 0) {
    print("x is a positive even number")
  } else {
    print("x is a positive odd number")
  }
  
} else {
  
  if (x %% 2 == 0) {
    print("x is a negative even number")
  } else {
    print("x is a negative odd number")
  }
}


# ifelse function
# create a vector to check the number are even or odd using if...else function
x <- (1:10)
x
ifelse((x %%2 == 0),"even","odd")


marks <- c(63,65,29,19,48)
ifelse((marks<40), "FAIL","PASS")


# switch function
switch(1,"red","green","pink")
switch(5,"a","b","c","d","f")


# for loop function
fruit<-c("Apple","Orange","Guava","Pineapple","Banana","Grapes")
for(i in fruit){
  print(i)
}

# using for loop count how many even number from integer vector
A <- c(1,5,4,7,8,10,4,7,3,18)
even_count <- 0
odd_count <- 0
for(i in A){
  if(i%%2 == 0){
    even_count <- even_count+1
    
  }else{
    odd_count <- odd_count+1
  }
}
print(even_count)
print(odd_count)


#matrix
mat <- matrix(21:32,nrow=6,ncol=2)

for (r in 1:nrow(mat))
{
  for (c in 1:ncol(mat))
  {
    cat(mat[r,c]," ")
  }
  cat("\n")
}
####
mat <- matrix(21:32,nrow=6,ncol=2)

for (r in 1:nrow(mat))
{
  for (c in 1:ncol(mat))
  {
    cat(mat[r,c]+20," ")
  }
  cat("\n")
}


# R repeat loop
v <- c("Hello","Repeat","loop")
cnt <- 2
repeat{
  print(v)
  cnt <- cnt+1
  if (cnt>5){
    break
  }
}


#while loop
y <- c("Hello","while loop","example")
cnt <- 2
while(cnt < 7){
  print(y)
  cnt = cnt+1
}

# R next statement
val <- 6:11
for(i in val)
{
  if(i == 8)
  {
    next
  }
  print(i)
}

# R break statement
val <- 6:11
for(i in val)
{
  if(i == 9)
  {
    break
  }
  print(i)
}

