getwd()
setwd( "C:/Users/sies/Documents/")
a <-1:10
a
x <- data.frame (Name =c('rahul','vishwa'),age =c(19,18),gender=c('male','male'))
dput(x,"meta.txt")
y <-mtcars
dget("meta.txt")
dump(c('x','y'),file="dump_data.R")
source("dump_data.R")
save(x,y,file="sampledata.rda")
load("sampledata.rda")
save.image("binarydata.R")
load("binarydata.R")
x <-list(1,2,3)
s <- serialize(x,NULL)
save(s,file="serialize_data.txt") 
load("serialize_data.txt")
unserialize(s)

###########tapply
employee_data <-data.frame(employeeid=c(1:10),
                            department=c("HR","IT","IT","data science","CS","data science","HR","data science","HR","CS"),
                            salary=c(20000,30000,50000,45000,85000,90000,940000,78000,60000,54000))
print(employee_data)
max <-tapply(employee_data$salary,employee_data$department,max) 
print(max)



