library(dplyr)
getwd()
setwd("C:/Users/sies/Documents/smiti_04sem3/R programming")
emp_data <- read.csv("employee_data1.csv")
str(emp_data)
print(emp_data)

#bar chart
ggplot(emp_data, aes(x=Department, y=Experience, fill=Department))+
  geom_bar(stat="identity", width=0.8, position="dodge")+
  ggtitle("Bar Graph")+
  xlab("Department")+
  ylab("Experience")+
  scale_fill_brewer(palette = "PuRd")+
  theme_light()

#Scatter plot 
ggplot(emp_data, aes(x=Department, y=Salary, color=Department))+
  geom_point(stat="identity")+
  ggtitle("Scatter Plot")+
  xlab("Department")+
  ylab("Salary")+
  theme_get()

#Pie Chart
chart <- table(emp_data$Department)
pie(chart,
    main = "Pie Chart of Department",
    col = c("lightgreen","pink","skyblue","lightyellow"),
    init.angle = 90)