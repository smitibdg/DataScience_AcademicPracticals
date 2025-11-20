#Creating data_frame
df <- data.frame(Training = c("Strength", "Stamina", "Other"),
                 Pulse = c(100,120,150),
                 Duration = c(60,50,40),)

#Viewing the data_frame using View() function
View(df)

#Identify the structure of the data_frame using str() function 
str(df)

#Summarize the data_frame using summary() function
summary(df)

# Accessing elements using $ command in data_frame
final_df <- data.frame(df$Training, df$Pulse)
final_df

#Accessing elements of the data_frame using column name
df[["Training"]]

#Accessing elements using row index
df[1,] #All elements of 1st row

#Accessing elements using column index
df[,1] #All records of 1st column

#Accessing all elements of data_frame except 1st row & 1st column
df[-1,-1] 

#Accessing elements of 1st & 2nd row with 1st & 3rd column
df[c(1,2),c(1,3)]

#Length of the data_frame
length(df)

#Dimension of the data_frame 
dim(df)

#Adding new column to the data_frame using cbind() function
df <- cbind(df, Steps=c(1000,1500,1200))
df

#Adding new row to the data_frame using rbind() function
df <- rbind(df, c("Stamina",140, 50, 2000))
df
