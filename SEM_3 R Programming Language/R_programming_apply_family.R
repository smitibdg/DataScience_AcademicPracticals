# APPLY FAMILY IN R
#apply function()
sample_matrix <- matrix(c<-(1:10),nrow=3,ncol=10)
print("sample matrix")
sample_matrix

print("sum across rows")
apply(sample_matrix,1,sum)

print("mean across columns")
apply(sample_matrix,2,mean)

print("mean across rows")
apply(sample_matrix,1,mean)

#lapply function(for list)
names <- c("sapna","shivani","krishna","gayu")
print("original data:")
names

print("data after laaply():")
lapply(names,toupper)

print("data after laaply():")
lapply(names,tolower)

#sapply() function
sample_data <- data.frame(x=c(1,2,3,4,5,6),
                          y=c(3,2,4,2,34,5))
print("original data:")
sample_data

print("Data after sapply():")
sapply(sample_data,max)

print("Data after sapply():")
sapply(sample_data,min)


#tapply
data <- data.frame(name=c("amy","max","ray","kim","sam","eve","bob"),
                   age=c(24,22,21,23,20,24,21),
                   gender=factor(c("F","M","M","F","M","F","M")))
print("original data")
data
tapply(data$age,data$gender,min)


#using tapply function find out highest salary of employee department wise.
data <- data.frame(name=c("amy","max","ray","kim","sam","eve","bob"),
                   salary=c(24000,22000,21000,23000,20000,24000,20000),
                   department=factor(c("IT","DS","CS","BT","CS","DS","IT")))
data
tapply(data$salary,data$department,max)

#tapply for mtcars
y <- data.frame(mtcars)
y
tapply(y$mpg,list(y$cyl,y$am),mean)

#tapply use for sepal length
iris
tapply(iris$Sepal.Length,iris$Species,mean)


#mapply
A = list(c(1,2,3,4))
B = (c(2,5,1,6))
result = mapply(sum,A,B)
print(result)

#mapply function with multiple arguments.
Data1 <- c(1,2,3)
Data2 <- c(10,20,30)
mult_one <- function(Data1,Data2)
{
  Data1 + Data2
}  
mapply(mult_one,Data1,Data2)
