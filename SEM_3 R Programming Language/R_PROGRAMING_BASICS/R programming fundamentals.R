# comments "#" is used for comment lines in R
# This a comment

#VARIABLES

# Declaring variables
X <- 20
print(X) # Use  "print()" key word to print statements is R
# OR you can directly call the objects name
X

# Data types
int1 <-  10L # integer values are followed by Upper Case L
int1
class(int1) #"class()" used to print the class of variable

num1 <-  10 #numeric datatype is whole numbers with or without decimal "similar to float in python"
num2 <- 2.2 
num1
num2
class(num1)
class(num2)


typeof(num1) #print the type of the variable

log = TRUE # logical data type
class(log)

#to check data type
is.logical(log)
# to convert data type
log<- as.character(log)
log
class(log)

#complex datatype 
comp <- 3+2i
class(comp)

#character datatype
char <- "Hello R Programming"
class(char)

#raw datatype 
raw1 <- raw(0x1)
raw1
class(raw1)

#ls() to list out all created variable
ls()
#rm() to remove variable
rm()

# getwd() to get working directory
dir <- getwd()

#setwd() to set working directory 

dir <- setwd("Location") # for example setwd("C:/Users/Desktop/R studio")

#Declaring global variable using "<<-"

global <- "Hello R"
my_func <- function(){
  global <<- "hello R"
  paste("this txt is : ", global)
}

my_func()
paste("this txt is : ", global)

