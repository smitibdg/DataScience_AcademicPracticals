install.packages("dplyr")
library(dplyr)
getwd()
setwd("C:/Users/Pranav Badugu/Desktop/Smiti Notes/SEM_3/Data Science with R")
stud_data <- read.csv("prac4.csv")
str(stud_data)
print(stud_data)

#Q1. Calculate the total marks of each student
stud_data <- stud_data %>%
  mutate(total = subject1 + subject2 + subject3)
print(stud_data)

#Q2. Calculate the total percentage of each student
stud_data <- stud_data %>%
  mutate(total = subject1 + subject2 + subject3,
         percentage = (total / (3 * 100)) * 100)
print(stud_data)

#Q3. Calculate the grade for each student
calculate_grade <- function(percentage){
  if(percentage>=70){
    return("A")
  }else if(percentage>=60){
    return("B")
  }else if(percentage>=40){
    return("C")
  }else{
    return("D")
  }
}
stud_data <- stud_data %>% 
  mutate(grade = sapply(percentage,calculate_grade))
print(stud_data)

#Q4. Display the student is having the highest total marks from each of the department.
highest_marks_student <- stud_data %>%
  group_by(department) %>%
  filter(total == max(total)) %>%
  ungroup()
print(highest_marks_student)

#Q5. Display the student who got first class in data science department.
first_class_student <- stud_data %>%
  filter(department == "data science" & percentage == max(percentage))
print(first_class_student)

#Q6. Display the student who got the highest marks in subject3.
highest_subject3_student <- stud_data %>%
  filter(subject3 == max(subject3))
print(highest_subject3_student)

#Q7. Display the count of student from each department.
student_count_by_department <- stud_data %>%
  group_by(department) %>%
  count(department)
print(student_count_by_department)

#Q8. Display the count of student who failed from each department.
failing_grade <- c("D")
failing_students_by_department <- stud_data %>%
  filter(grade %in% failing_grade) %>%
  group_by(department) %>%
  count(department)
print(failing_students_by_department)
#Q9. 
#Q10. Write the updated data set which contains total marks, percentage, and grade in excel sheet.
library(xlsx)
updated_data <- stud_data %>%
  select(total, percentage, grade)
write.xlsx(stud_data, updated_data, file = "prac4.xlsx", sheetName = "updated_student_data", 
           col.names = TRUE, row.names = TRUE, append = TRUE)
print(updated_data)