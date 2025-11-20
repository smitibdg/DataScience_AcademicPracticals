install.packages("xlsx") # for installing libarary

library("xlsx")#for importing library

data <- read.xlsx("Empdata.xlsx",sheetIndex = 1)#reading xlsx  sheet 1 "sheetIndex = 1"
data

data2 <- read.xlsx("emp_data.xlsx",sheetIndex = 2)#reading xlsx sheet 2 "sheetIndex = 2"
data2

#creating dataframe for writing xlsx 
data <- data.frame(
  Roll_no = c(1:15),
  Name = c("Mano","Sakthi","Devesh","Pawan","Muthu","Raju","Arvind","Vaishnavi","Shradhha","Somu","Ramu","Rahul","Subash","Ajay","Raja"),
  Course = c("DataScience","Computer Science","Information Technology","Biotechnology","BMS","BMM","B.com","Zoology","Botnany","Maths","Physics","Psychology","DS","CS","IT"),
  Semester = c(1,2,2,1,2,3,1,2,1,2,1,3,2,4,3)
)

#for writing xlsx file
new_xlsx <- write.xlsx(data,"emp_data.xlsx",sheetName = "Student_ddetails",col.names = TRUE,row.names = TRUE,append = TRUE)
new_xlsx
#for reading xlsx file
stud_data <- read.xlsx("emp_data.xlsx",sheetIndex = 3)
#forremoving 1st "NA" column
#stud_data <- stud_data[,-1]
#for viewing output
stud_data


