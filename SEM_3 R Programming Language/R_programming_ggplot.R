install.packages('ggplot2')
library(ggplot2)
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col = Species, shape = Species))+geom_point()
ggplot(data = mtcars, mapping = aes(x=mpg, y=disp))+geom_point()

ggplot(mtcars, aes(x=mpg, y=hp,col = gear))+geom_point()


student <- read.csv('student.csv')
student
ggplot(student, aes(x=Roll_no,y = subject_1, col=Semester, shape=Department))+geom_point()
ggplot(student,aes(x=subject_1, col=Department)) + geom_bar()
