data <- data.frame(emp_ID=c(1:15),
                   emp_name=c("Mano","Sakthi","Devesh","Pawan","Muthu","Raju","Arvind","Vaishnavi","shradhha","somu","ramu","someone","Subash","Ajay","Raja"),
                   Gender = c("M","M","M","M","M","M","M","F","F","M","M","M","M","M","M"),
                   City = c("Mumbai","Pune","Mumbai","Pune","Mumbai","Pune","Mumbai","Pune","Mumbai","Pune","Mumbai","Pune","Mumbai","Pune","Mumbai"),
                   Designation = c("Sofwatare_D","Data Analyst","Web_Designer","Manager","HR","Pr","xyz","abc","Sofwatare_D","Manager","IT","Sofwatare_D","Manager","HR","Mumbai"),
                   Department = c("Development","Analyst","Designer","Sales","Operation","Sales","Operation","Sales","Marketing","Marketing","Operation","Operation","Sales","Marketing","Marketing"),
                   Joning_date = c("2019-04-05","2014-03-01","2015-05-01","2019-12-01","2017-01-01","2018-02-01","2019-03-01","2019-04-01","2019-11-01","2020-10-01","2022-09-01","2019-06-01","2019-07-01","2019-08-01","2019-04-01"),
                   Salary = c(20000,120000,17000,190000,250000,100000,140000,70000,150000,110000,180000,115000,175000,185000,130000),
                   Contact_no = c("(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631","(206) 342-8631"))



new_csv <- write.csv(data,"employeedata.csv")
