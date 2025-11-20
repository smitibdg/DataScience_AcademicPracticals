getwd()
setwd("C:/Users/Muthu Mobiles/Desktop/R studio")
library(dplyr)
library(xlsx)
data <- read.csv("student.csv")
data

#Q1
data <- mutate(data, Total = subject_1+subject_2+subject_3)
data

#Q2

data <- mutate(data, Percentage = paste0(round((Total/300)*100),"%"))
data 
#Q3
data <- mutate(data, Grade = case_when(Percentage>=90~"A",
                                       Percentage>=80 & Percentage<90 ~"B",
                                       Percentage>=70 & Percentage<80 ~"C",
                                       Percentage>=60 & Percentage<70 ~"D",
                                       Percentage>=45 & Percentage<60~"E",
                                       Percentage<45~"Fail"))
data
#Q4 max marks in each department
max_marks <- data%>%group_by(Department)%>%summarise(max_marks=max(Total))
max_marks

#Q5
data_ds <-data%>%filter( Department == "DataScience")%>%filter(Total == max(Total))
data_ds

#Q6 
high_marks_sub_3 <- filter(data,subject_3==max(subject_3))
high_marks_sub_3

#Q7
total_count <- data%>%group_by(Department)%>%count(Department)
total_count

#Q8
data_ds <-data%>%filter( Department == "DataScience")%>%filter(Grade=="F")
data_ds
#Q9 f from each ddept
f_marks <- data%>%group_by(Department)%>%filter(Grade=="Fail")%>%count(Department)
f_marks
#Q10
random_data <- data%>%filter(Department == "Information Technology")%>%sample_n(5)
random_data
 
#Q11
write.xlsx(data,"students_excel.xlsx", row.names = FALSE)
