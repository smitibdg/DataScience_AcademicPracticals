# to read the csv file
r_csv <- read.csv("R_PROGRAMMING_CSV/employeedata.csv") #replace your csv location or name 

# to remove the unwanted column [refers to row index,refers to column index]
r_csv <- r_csv[,-1]

#to view the csv file 
View(r_csv)

#question 1: Display the records in which the gender is "male" and city is "pune"
male_emp <- subset(r_csv, Gender=="M" & City == "Pune", select = c(emp_ID,emp_name,Gender,City))
male_emp

#question 2: Display the records in which the gender is "female" and city is "pune"
female_emp <- subset(r_csv, Gender=="F" & City == "Pune", select = c(emp_ID,emp_name,Gender,City))
female_emp

#question 3: Calculate the experience of the employee in years and write it in new csv file
current_date <- Sys.Date() # for storing the current date
exper <- (as.Date(current_date)-as.Date(r_csv$Joning_date )) #for difference the current date with joining date 
exper #for viewing the output
r_csv$experiance <- as.numeric(exper)%/%365.25 # for converting days to years and storing to new column "experience"
r_csv # for viewing the output

#optional method
r_csv$exp_month <- as.numeric(u_csv$experiance)*12 #for converting days to months and storing to new column "exp_month"
r_csv #viewing the output

write.csv(r_csv,"final.csv") # to write the experience in new csv file "final.csv"
u_csv <- read.csv("final.csv") # to read the written csv called final.csv
u_csv <- u_csv[,-1]
u_csv$experiance # accessing the experience column

#question 4:display the employees who are working in either sales team or operations or marketing
sales_Oper_Market <- subset(u_csv, Department %in% c("Marketing","Sales","Operation"))
sales_Oper_Market

#question 5:display the highest salary in sales team
sales_data <- subset(u_csv,Department=="Sales") #storing sales column data from u_csv in sales_data 

# to find the highest salary in sales department
high_sal_sales <- subset(sales_data,Salary== max(Salary),select =c(1,2,4,6))
high_sal_sales

#question 6:display the maximum salary in pune city
city_data <- subset(u_csv,City=="Pune") #storing city column data from u_csv in city_data 

# to find the highest salary in pune city
high_sal_pune <- subset(city_data, Salary==max(Salary)&City=="Pune",select =c(1,2,4,6))
high_sal_pune

#question 7:display the minimum salary in pune city
min_sal_pune <- subset(city_data,Salary==min(Salary),select =c(1,2,4,6))
min_sal_pune


