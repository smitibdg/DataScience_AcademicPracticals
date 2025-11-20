#Practical 1
#Control Statements.
#if statement
x <- 3
if (x<0){
  print("The number is positive")
}
print("outside if statement")

#if....else statement
x <- 12
if(x>0){
  print("x is a positive number")
}else{
  print("x is a negative number")
}

#if....else if....else statement
x <- 0 
if(x>0){
  print("x is a positive number")
} else if (x<0){
  print("x is a negative number")
} else{
  print("x is zero")
}

#Nested if....else statement
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

#ifelse function
x <- (1:10)
x
ifelse((x %%2 == 0),"even","odd")
marks <- c(43,76,79,21,58)
ifelse((marks<40), "FAIL","PASS")

#switch function
switch(1,"skyblue","red","orange")
switch(5,"a","b","c","d","f")


#b.
#for loop
fruit<-c("Apple","Banana","Guava","Grapes","Pineapple","Orange")
for(i in fruit){
  print(i)
}

#using for loop count how many even number from integer vector
a<-c(1,7,3,5,8,11,4,7,2,4)
even_count<-0
odd_count<-0
for(i in a){
  if(i%%2 == 0){
    even_count<-even_count+1
  }else{
    odd_count<-odd_count+1
  }
}
print(even_count)
print(odd_count)

#matrix
mat<-matrix(21:32,nrow=6,ncol=2)
mat
for(r in 1:nrow(mat))
  for(c in 1:ncol(mat))
    mat[r,c]=mat[r,c]+10
print(mat)


#repeat loop
s<-c("Hello","Repeat","loop")
cnt<-3
repeat{
  print(s)
  cnt=cnt+1
  if(cnt>5){
    break
  }
}

#while loop
b<-c("Hello","while loop","example")
cnt<-3
while(cnt<7){
  print(b)
  cnt=cnt+1
}



#c.
#Vectors 
a<-5:25 
a 
#seq() function
seq_var<-seq(1,4,by=0.5)
seq_var
#vector length
fruits<-c("apple","banana","cherry") 
length(fruits) 
#access the first item
fruits[2]
#item exists or not
"cherry" %in% fruits

#Matrices
#arrange by row
r<-matrix(c(5:16),nrow=4,ncol=3,byrow=TRUE)
print(r)
#arrange by column
c<-matrix(c(3:14),nrow=4,ncol=3,byrow=FALSE)
print(c)
#define the column and row names
row_names<-c("row1","row2","row3","row4")
col_names<-c("col1","col2","col3")
rc<-matrix(c(3:14),nrow=4,ncol=3,byrow= TRUE, 
            dimnames= list(row_names,col_names))
print(rc)

#Arrays 
multidimarray<-array(1:24,dim=c(2,4,3))
print(multidimarray)
#access items
print(multidimarray[2,3,2])
#access all the items from the first row from matrix one
multiarray<-array(1:24,dim=c(4,3,2))
multiarray
multiarray[c(1),,1]
#access all the items from the first column from matrix one
multiarray[,c(1),1]
array(1:23,dim=c(2,4,3),dimnames=list(paste("Patient",1:2,sep=" "),
                                             LETTERS[1:4],c("X","Y","Z")))




#Practical 2
#a.
thiscity<-list("Mumbai","Delhi","Hyderabad","Chennai","Rajasthan") 
thiscity
#access list
thiscity[3] 
#change item value 
thiscity[2]<-"Meghalaya" 
thiscity
#list length
length(thiscity)
#add list items 
append(thiscity,"Bihar") 
append(thiscity,"Bihar",after=3)
#remove list items 
newlist<-thiscity[-4]
newlist 
#join two lists 
list1<-list("Neha","Manasa","Chandana","Sharan") 
list2<-list("Sawant","V.S","Cherupally","Shetty") 
list3<-c(list1,list2) 
list3 
#nested list 
this_list<-list(Name="Smiti", City="Mumbai", Hobbies=c("Music","Dancing","Coding"))
this_list 
name<-this_list[[1]]                                                        
name 
city<-this_list[[2]] 
city 
hobbies<-this_list[[3]][[3]] 
hobbies 

#b.
#create a data frame 
data_frame<- data.frame(Name=c("Smiti","Mira","John"),
                        Age=c("20","23","21"),
                        income=c("100k","200k","500k")) 
data_frame 
#Summary of data frame 
summary(data_frame) 
#Structure of data frame 
str(data_frame) 
#Extracting rows and columns of data frame 
score<-data.frame(data_frame$Age,data_frame$income) 
score
res<-data_frame[3,] 
res 
res<- data_frame[1:2,] 
res
#Adding rows and columns 
data_frame<-rbind(data_frame, c("Sam","22","250k")) 
data_frame 
data_frame<-cbind(data_frame, Gender=c("F","F","M","M")) 
data_frame 
#Dimensions 
dim(data_frame)

multidimarray<-array(1:24, dim = c(2, 4, 3))
print(multidimarray)
#Access Array Items
print(multidimarray[2, 3, 2])

#c.
#Q1.read file
getwd()
setwd("C:/Users/Pranav Badugu/Desktop/Smiti Notes/SEM_3/Data Science with R")
stud_data<-read.csv("Student.csv")
stud_data
#Check if file exists or not.
stud_data<-function(file){
  if(file.exists(file)){
    read.csv(file)
  }else{
    print("File Does not Exist!!")
  }
}
stud_data(file="Student.csv")

#Q2.created new file to write
write_to_csv<-function(file,content){
  if(file.exists(file)){
    write.table(content,file,append=TRUE,col.names=FALSE)
  } else{
    print("created new file to write")
    write.csv(content,file)
  }
}
#Q3.Search students by department.
search_students<-function(file,Departemnt){
  if(file.exists(file)){
    read<-read.csv(file)
    match<-subset(read,Department==Department)
    match
  }else{
    print("Error in fetching")
  }
}
search_students("Student.csv","DataScience")




#practical 3
#a.
install.packages("dplyr")
library("dplyr")
getwd()
setwd("C:/Users/Pranav Badugu/Desktop/Smiti Notes/SEM_3/Data Science with R")
emp_data<-read.csv("emp_data.csv")
emp_data
#Q1.
emp_in_pune<-emp_data %>% filter(City=="Pune")
print(emp_in_pune)
#Q2.
emp_in_depts<-emp_data %>% filter(Department %in% c("Sales","Operation","Marketing"))
print(emp_in_depts)
#Q3.
managers_in_IT<-emp_data %>% filter(Department == "IT" & Designation == "Manager")
print(managers_in_IT)
#Q4.
emp_in_pune<-emp_data %>% filter(Gender=="F",City=="Pune")
print(emp_in_pune)
#Q5.
total_salary_per_employee <- emp_data %>%
  group_by(emp_name) %>%
  summarise(total_salary = sum(Salary))
print(total_salary_per_employee)
#Q6.
emp_data$Joning_date <- as.Date(emp_data$Joning_date, format = "%d-%m-%Y")
employees_before_2019 <- emp_data %>%
  filter(Joning_date < as.Date("2019-12-01"))
print(employees_before_2019)
#Q7.
highest_salary_employee <- emp_data %>% filter(Salary == max(Salary))
print(highest_salary_employee)
#Q8.
highest_salary_sales_employee <- emp_data %>%
  filter(Department == "Sales") %>%
  filter(Salary == max(Salary))
print(highest_salary_sales_employee)
#Q9.
salary_stats_pune <- emp_data %>%
  filter(City == "Pune") %>%
  summarise(max_salary = max(Salary),
            min_salary = min(Salary))
print(salary_stats_pune)

#b.
getwd()
setwd("C:/Users/Pranav Badugu/Desktop/Smiti Notes/SEM_3/Data Science with R/R_PROGRAMMING_dplyr_")
library("dplyr")
prod_data<-read.csv("product_data.csv")
prod_data
#Q1.
select(prod_data, -c(Product_price,Quantity))
#Q2.
select(prod_data, ends_with("y"))
#Q3.
select(prod_data, starts_with("c"))
#Q4.
qty<- filter(prod_data, Quantity > 100)
qty
#Q5.
arrange_qty_asc <- arrange(prod_data, Quantity)
arrange_qty_asc
#Q6.
head(select(prod_data,c(Product_ID:Category)),6)
#Q7.
tail(select(prod_data,c(Product_ID:Category)),6)
#Q8.
rename_column_name<-rename(prod_data, Prouct_Quantity=Quantity)
rename_column_name
#Q9.
mutate_data<-mutate(prod_data, Total_price = Product_price*Quantity)
mutate_data
#Q10.
trans_mute<-transmute(prod_data, Total_price = Product_price*Quantity)
trans_mute
#Q11.
records<-(prod_data[-c(4,5),])
records
#Q12.
unique_records<-unique(prod_data, incomparables = FALSE)
unique_records
#Q13.
random_data<-prod_data[sample(nrow(prod_data),4),]
print(random_data)
#Q14.
half_random_data = sample_frac(prod_data,0.60)
half_random_data
#Q15.
total_prod<-prod_data %>% group_by(Category) %>% count(Category)
total_prod
#Q16.
sum_prod<-prod_data %>% 
  group_by(Category) %>% 
  summarise(max_price=max(Product_price), 
            min_price=min(Product_price))
sum_prod



#c.
getwd()
setwd("C:/Users/Pranav Badugu/Desktop/Smiti Notes/SEM_3/Data Science with R")
library("dplyr")
empl_data<-read.csv("emp_data2.csv")
empl_data
#Q1.Calculate the total salary of the employee
employee_data<-empl_data %>%
  mutate(Total_Salary=Basic_Pay+pf+hra)
employee_data
#Q2.Display employee with maximum salary from each department
max_salary_per_dept <- employee_data %>%
  group_by(Department) %>%
  filter(Total_Salary == max(Total_Salary)) %>%
  ungroup()
print(max_salary_per_dept)
#Q3.Calculate maximum salary according to designation
max_salary_per_designation <- employee_data %>%
  group_by(Designation) %>%
  summarise(max_salary = max(Total_Salary)) %>%
  ungroup()
max_salary_per_designation
#Q4.Extract year from joining Date
employee_data <- employee_data %>%
  mutate(Joining_year = year(as.Date(Joining_date, format="%y-%m-%d")))
print(employee_data)
#Q5.Calculate the total experience for all the employees
current_date <- Sys.Date()
employee_data <- employee_data %>%
  mutate(experience_years = as.numeric(difftime(current_date, as.Date(Joining_date), units = "days")) / 365)
total_experience <- sum(employee_data$experience_years)
total_experience
#Q6.Calculate minimum salary of employee from each department
min_salary_per_dept <- employee_data %>%
  group_by(Department) %>%
  summarise(Min_Salary = min(Total_Salary)) %>%
  ungroup()
print(min_salary_per_dept)
#Q7.Display the employee who are working for more than 2 years in 'Finance' dept
employees_in_finance <- employee_data %>%
  filter(Department == 'Finance' & experience_years > 2)
employees_in_finance
#Q8.Find 5 random employees from 'IT' Dept
random_IT_employees <- employee_data%>%filter(Department == 'IT') %>% sample_n(2)
random_IT_employees

#d.
install.packages("xlsx")
library("xlsx")
getwd()
setwd("C:/Users/Pranav Badugu/Desktop/Smiti Notes/SEM_3/Data Science with R")
library("dplyr")
prod_data<-read.csv("product data.csv")
prod_data
#Q1.Display all Electronic category products
electronic_products <- prod_data %>%
  filter(Category == "electronics")
print(electronic_products)
#Q2.Write output to another Excel sheet
write.xlsx(electronic_products, "Electronic_products.xlsx", sheetName = "2")

# Optional: Print a message indicating success
cat("Electronic products have been written to 'electronic_products.xlsx'.\n")







#Practical 4
#a.
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
plot(1:10, pch=10, cex=2)
plot(1:10, type="l", lwd=1)
plot(1:10, type="l", lwd=3, lty=4)
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)
plot(line1, type ="l", col = "skyblue")
lines(line2, type="l", col = "pink")
# Create a vector of pies
x <- c(10,20,30,40)
pie(x)
# Display the pie chart and start the first pie at 90 degrees
pie(x, init.angle = 90)
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")
pie(x, label = mylabel, main = "Fruits")
# Create a vector of colors
colors <- c("red", "yellow", "pink", "brown")
# Display the pie chart with colors
pie(x, label = mylabel, main = "Fruits", col = colors)
# Display the explanation box
legend("bottomright", mylabel, fill = colors)


#b.
#Q1.
library(dplyr)
library(xlsx)
library(ggplot2)
stud_data <- read.xlsx('students_excel.xlsx',sheetIndex = 1)
stud_data

stud_data %>% 
  ggplot(aes(Semester))+
  geom_bar(aes(fill=Grade),
           position ='dodge')+
  theme_bw()+
  labs(title = 'Grades BY Semester')+
  facet_wrap(~Grade)
#Q2.
library(dplyr)
library(xlsx)
library(ggplot2)
stud_data <- read.xlsx('students_excel.xlsx',sheetIndex = 1)
stud_data

stud_data %>% 
  ggplot(aes(x=Semester, y=Grade,fill=Grade))+
  geom_bar(stat = "identity",position ='dodge')+
  theme_bw()+
  labs(title = 'Grades by Semester')+
  geom_text(aes(label=Percentage),vjust=0.5)+
  facet_wrap(~Grade)
#Q3.
emp_data <- read.csv('emp_data1.csv')
View(emp_data)
emp_data %>% 
  ggplot(aes(Designation))+
  geom_bar()+
  theme_bw()+
  facet_wrap(~Department)+
  labs(y='Count of employees',title='Employee type by dept')

a<- read.csv("final.csv")
a
ggplot(a,aes(x=experiance, y=Salary))+
  geom_point()+
  geom_smooth()

#department wise count of employee
ggplot(data=a, aes(x=Department, fill=Gender))+
  geom_bar()
totalcountofdep <- dplyr::count(a,Department)
totalcountofdep
geom_bar(position="dodge")
ggplot(a, aes(x=experiance))+
  geom_histogram(binwidth=0.5)



#c.
install.packages("lattice")
library(lattice)
sample <- paste0(rep("Sample_",40),seq(1,40))
specie <- c(rep("Rice",10), rep('Bajra',10),rep('Wheat',10),rep('Jowar',10))
gene1 <- c(seq(5,14)+rnorm(10,4,1),
           seq(5,14)+rnorm(10,4,0.5),
           seq(5,14)+rnorm(10,4,0.2),
           seq(5,14)+rnorm(10,4,0.7))
gene2 <- c(seq(5,14)+rnorm(10,4,1),
           seq(5,14)+rnorm(10,2,0.2),
           seq(5,14)+rnorm(10,4,3),
           seq(5,14)+rnorm(10,4,4))
data <- data.frame(sample, specie, gene1, gene2)
data
xyplot(gene1~gene2 | specie, data = data, pch= 20, cex = 2, col="skyblue")













#Practical 5
#a.
getwd()
setwd("C:/Users/Pranav Badugu/Desktop/Smiti Notes/SEM_3/Data Science with R")
library(dplyr)
library(xlsx)
stud_data <- read.csv("Student.csv")
stud_data
#Q1.Calculate the total marks for each student.
stud_data <- mutate(stud_data, Total = subject_1+subject_2+subject_3)
stud_data
#Q2.Calculate the total percentage for each student.
stud_data <- mutate(stud_data, Percentage = paste0(round((Total/300)*100),"%"))
stud_data
#Q3.Calculate the grade of student.
stud_data <- mutate(stud_data, Grade = case_when(Percentage>=90~"A",
                                       Percentage>=80 & Percentage<90 ~"B",
                                       Percentage>=70 & Percentage<80 ~"C",
                                       Percentage>=60 & Percentage<70 ~"D",
                                       Percentage>=45 & Percentage<60~"E",
                                       Percentage<45~"Fail"))
stud_data
#Q4.Display the student who is having the highest marks from each of the dept of college.
max_marks <- stud_data %>% 
  group_by(Department) %>%
  summarise(max_marks=max(Total))
max_marks
#Q5.Display the student who got first class.
data_ds <-stud_data %>%
  filter(Department=="DataScience") %>%
  filter(Total == max(Total))
data_ds
#Q6.Display the student who got the highest marks in subject 3.
high_marks_sub_3 <- filter(stud_data,subject_3==max(subject_3))
high_marks_sub_3
#Q7.Display the total count of student from each department.
total_count <- stud_data %>%
  group_by(Department) %>%
  count(Department)
total_count
#Q8.Display the students who got failed in “DS” department
data_ds <-stud_data %>%
  filter(Department == "DataScience") %>%
  filter(Grade=="Fail")
data_ds
#Q9.Display the total count of students who got failed from each department.
f_marks <- stud_data %>%
  group_by(Department) %>%
  filter(Grade=="Fail") %>%count(Department)
f_marks
#Q10.Display any random 5 students from “IT” department.
random_data <- stud_data %>%
  filter(Department == "Information Technology") %>%
  sample_n(5)
random_data
#Q11.Write the updated dataset which contains total marks, percent and grade in the excel file again.
write.xlsx(stud_data,"students_excel.xlsx", row.names = FALSE)
#Q12.Create a histogram from the above dataset.
library(ggplot2)
library(xlsx)
d <- read.xlsx("students_excel.xlsx",sheetIndex = 1)
d
ggplot(d, aes(x = Total)) +
  geom_histogram(binwidth = 10, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Total Marks", x = "Total Marks", y = "Frequency") +
  theme_minimal()
#Q13.Create a scatter plot from the above dataset.
# Scatter plot of Total vs Percentage
ggplot(d, aes(x = Total, y = as.numeric(gsub("%", " ", Percentage)))) +
  geom_point(aes(color = Department), size = 3) +
  labs(title = "Scatter Plot of Total Marks vs Percentage", x = "Total Marks", y = "Percentage") +
  theme_minimal()
#Q14.Created a stacked bar plot from the above dataset.
# Stacked bar plot of Grades by Department
ggplot(d, aes(x = Department, fill = Grade)) +
  geom_bar() +
  labs(title = "Stacked Bar Plot of Grades by Department", x = "Department", y = "Count") +
  theme_minimal()


#b.
employee_data <- data.frame(
  EmployeeID = 1:10,
  Name = c("John", "Jane", "Alice", "Bob", "Charlie", "David", "Eve", "Frank", "Grace", "Hannah"),
  Department = c("HR", "IT", "IT", "HR", "Finance", "Finance", "IT", "HR", "Finance", "IT"),
  Salary = c(50000, 60000, 55000, 52000, 70000, 72000, 58000, 49000, 68000, 61000)
)
print(employee_data)
# Use tapply to find the highest salary in each department
highest_salary <- tapply(employee_data$Salary, employee_data$Department, max)
print(highest_salary)


#Practical 6
install.packages("tidyr")
library("tidyr")
#library("tidyverse")
head(iris, 3)
gather(iris, key="classification",
       value="measurements",
       Sepal.Length, Sepal.Width,
       Petal.Length, Petal.Width)
table4a
gather(table4a, key="year",
       value="cases", "1999", "2000")
table2
spread(table2, key=type, value=count)
table3
separate(table3, col=rate, into=c("cases","population"), sep="/")



#Practical 7
#Q1.make a function,accept a number as argument,if number is even print even,if number is even print even otherwise throw an error 
even_odd<-function(num){
  tryCatch(
    {
      if(num%%2==0){
        print("Even Number")
      }else{
        print("Odd Number")
      }
    },
    error = function(e){
      message('An error occured:', e ,'Value must be a number')
    },
    warning = function(w){
      message('Warning:', w)
    },
    finally = {
      message('Finally Done!')
    }
  )
}
# Call the function
#valid
even_odd(3)
even_odd(2)
#invalid
even_odd("a%6")

#Q2make a function, accept a vector of names as argument, if strings are valid then convert to upper case, otherwise throw error
to_upper<-function(vector){
  tryCatch(
    {
      if(!is.character(vector)){
        stop("Input must be a character vector.")
      }
      uppercase_names<-toupper(vector)
      return(uppercase_names)
    },
    error = function(e) {
      return(paste("Error:", e$message))
    }
  )
}
names <- c("jhon", "doe", "adam", "mano", "ajay")
print(to_upper(names))  
numeric_input <- 12345
print(to_upper(numeric_input))  
#vaild
to_upper("sies")
#invalid
to_upper(123)

