getwd()
read_func <- function(file){
  
  if(file.exists(file)){
    
    read.csv(file)
    
  } else{
    
    print('File Doesnt Exist!')
    
  }
  
}

read_func(file = "student.csv")

content <- read.csv("Empdata.csv")

content

write_func <- function(file,content){
  
  if(file.exists(file)){
    
    write.table(content, file, append=TRUE)
    
  } else{
    
    print("created new file to write")
    
    write.csv(content, file)
    
  }
  
}

write_func('employee.csv', content=content)


search_students <- function(file,dept){
  if(file.exists(file)){
    read_file <- read.csv(file)
    match <- subset(read_file,Department==dept)
    match
  } else{
    print("Error in fetching")
  }
  
}
search_students("student.csv","DataScience")


max_salary <- function(myfile,dept){
  if(file.exists(myfile)){
    data <- read.csv(myfile)
    department <-filter(data,Department==dept)
    max_sal <- department%>%filter(Salary == max(Salary))
    max_sal
  } else{
    print("Error")
  }
  
}
max_salary("Empdata.csv","Sales_team")
