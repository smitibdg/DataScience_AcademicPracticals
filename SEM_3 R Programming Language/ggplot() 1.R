install.packages("ggplot2")

library(ggplot2)
ggplot(data=iris,
       mapping=aes(x=Sepal.Length, y=Petal.Length))+
  geom_point()

#alternative way
#scatter plot
ggplot(iris,
       aes(x=Sepal.Length, y=Petal.Length, col=Species))+
  geom_point()

#line plot
#linetype in geom_line()=solid, dashed or dotted
#dashed
ggplot(iris,
       aes(x=Sepal.Length, y=Petal.Length, col=Species))+
  geom_line(linetype ="dashed")
#dotted
ggplot(iris,
       aes(x=Sepal.Length, y=Petal.Length, col=Species))+
  geom_line(linetype ="dotted")

#scatter plot with linear regression
?mpg
view (mpg)
#linear model
ggplot(mpg, aes(x=displ, y=cty))+
  geom_point()+
  geom_smooth()

#bar chart
#drv variable=front wheel drive, rear wheel drive, 4-wheel drive(3parameters)
#geom_bar
?mpg
ggplot(data=mpg, aes(x=drv))+
  geom_bar()
totalcountofdrv <- dplyr::count(mpg,drv)
totalcountofdrv

#histogram
#geom_histogram
view(mpg)
ggplot(data=mpg, aes(x=hwy))+
  geom_histogram(binwidth=2)

#scatter plot with linear regression
#plot with both points and smoothed line with diff colors
view (mpg)
ggplot(mpg, aes(x=displ, y=hwy))+
  geom_point(color="blue")+
  geom_smooth(color="red")

#bar chart
#barchart of class, colored by drive(front, rear, 4-wheel)
ggplot(mpg, aes(x=class, fill=drv))+
  geom_bar()
  geom_bar(position="dodge")

#percentage bar chart
ggplot(mpg, aes(x=class, fill=drv))+
  geom_bar()+
  geom_bar(position="fill")


getwd()
setwd("C:/Users/sies/Documents/smiti_04sem3/R programming")
A<- read.csv("employeedata3.csv")
A
ggplot(A,aes(x=Experience, y=Salary))+
  geom_point()+
  geom_smooth()


#department wise count of employee
ggplot(data=A, aes(x=Department, fill=Gender))+
  geom_bar()
totalcountofdep <- dplyr::count(A,Department)
totalcountofdep
geom_bar(position="dodge")

ggplot(A, aes(x=Experience))+
  geom_histogram(binwidth=2)

