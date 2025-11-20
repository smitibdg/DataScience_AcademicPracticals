# to create a file 
file.create("sample.txt")
# to write data into notepad
write.table(x=iris[1:10,], file='sample.txt')
# to rename the file
file.rename('sample.txt', 'iris.txt')

# to read the table
read.table('iris.txt')

# to list out the files in the directory
list.files()

#to copy the file 
file.copy("C:/Users/Muthu Mobiles/Desktop/R studio/iris.txt","C:/Users/Muthu Mobiles/Desktop/")

#creating directory
dir.create("C:/Users/Muthu Mobiles/Desktop/R Dir")
# for copying file to file 
file.copy("C:/Users/Muthu Mobiles/Desktop/R studio/iris.txt","C:/Users/Muthu Mobiles/Desktop/R Dir")

file.create("student.csv")


                                                                

write.csv(data.frame(roll_no=c(1,2,3,4,5),Name=c('Mano','Arvind','Suthaker','Anjali','Aruna'),course=c('DS','CS','DS','CS','IT'),Semester=c(1,2,2,3,1)), file="student.csv")
#read csv
read.csv("student.csv")
#read csv
data <- read.csv("student.csv")
print(is.data.frame(data))
                         
print(nrow(data))
print(ncol(data))
data
                           
