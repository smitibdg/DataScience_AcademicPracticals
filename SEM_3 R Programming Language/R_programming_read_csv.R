r_csv <- read.csv("employeedata.csv")
r_csv <- r_csv[,-1]
View(r_csv)

male_emp <- subset(r_csv, Gender=="M" & City == "Pune", select = c(emp_ID,emp_name,Gender,City))
male_emp

female_emp <- subset(r_csv, Gender=="F" & City == "Pune", select = c(emp_ID,emp_name,Gender,City))
female_emp

current_date <- Sys.Date()
exper <- difftime(current_date,as.Date(r_csv$Joning_date ))
exper
r_csv$experiance <- as.numeric(exper)%/%365.25
r_csv 


write.csv(r_csv,"final.csv")
u_csv <- read.csv("final.csv")
u_csv <- u_csv[,-1]
u_csv

#display the employees who are working in either sales team or operations or marketing
sales_Oper_Market <- subset(u_csv, Department %in% c("Marketing","Sales","Operation"))
sales_Oper_Market
#display the highest salary in sales team

sales_data <- subset(u_csv,Department=="Sales")

high_sal_sales <- subset(sales_data,Salary== max(Salary),select =c(1,2,4,6))
high_sal_sales
#display the maximum salary in pune city
city_data <- subset(u_csv,City=="Pune")
high_sal_pune <- subset(city_data, Salary==max(Salary)&City=="Pune",select =c(1,2,4,6))
high_sal_pune
#display the minimum salary in pune city
min_sal_pune <- subset(city_data,Salary==min(Salary),select =c(1,2,4,6))
min_sal_pune

