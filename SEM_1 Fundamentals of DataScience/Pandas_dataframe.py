import pandas as pd

stud_data = [(1, 'abc', 20, 'Male', 'IT', 'Mumbai'),
            (2, 'xyz', 21, 'Female', 'CS', 'Pune'),
            (3, 'aaa', 19, 'Male', 'DS', 'Mumbai'),
            (4, 'bbb', 22, 'Female', 'DS', 'Nagpur'),
            (5, 'ccc', 20, 'Female', 'DS', 'Surat')]

stud_df = pd.DataFrame(stud_data, columns=['RollNo.', 'Name', 'Age', 'Gender', 'Course', 'City'])
#print(stud_df)
print()

print("Top2 rows")
print(stud_df.head(2))

print("\n Last 3 rows")
print(stud_df.tail(3))

print()
print("Dimensions :", stud_df.shape)
print()

print("Coloumn names are :")
print(stud_df.columns)

print(stud_df.Name)
print(stud_df['Age'])
print(stud_df[['Name', 'Gender']])
print()

print("Size is :")
print(stud_df.size)

print("Column Datatypes :")
print(stud_df.dtypes)
print()

print("List view :")
print(stud_df.values)

print()
print(stud_df.index)
print()

print("First row")
print(stud_df.loc[0])
print()

print("First and Third row")
print(stud_df.loc[[0,2]])
print()

stud_df["Contact No."]=[111, 222, 333, 444, 555]
print(stud_df)
print()

print("Adding some column after some position/index: ")
stud_df.insert(6, "State",['Maharashtra', 'Kerala', 'Telangana', 'Punjab', 'Gujarat'])
print(stud_df)
print()

print("Delete column Contact No.: ")
df=stud_df.drop(columns=['Contact No.'])
print(df)
print()

print("2nd way to delete a column: ")
del stud_df['State']
print(stud_df)
print()

print("Delete 2nd row: ")
df = stud_df.drop(1)
print(df)
print()

print("Rename: ")
df = stud_df.rename(columns={'Contact No.' : 'Mobile No'})
print(df)
print()

print("Add a new row in existing data frame: ")
stud_df.loc[4]=[6, 'ddd', 23, 'male', 'IT', 'Pune', 666]
print(df)

print(stud_df)
print()

print("Update a single row's value in dataset")
df = stud_df.loc[2, 'Age']=81
print(df)

print(stud_df)
print()

print("Update multiple row's value in the dataset")
df = stud_df.loc[[0,3], 'City']=['Pune', 'Surat']
print(df)

print (stud_df)
print()

print("Data frame info")
print(stud_df.info())
print()
print("Describe stud_df")
print(stud_df.describe())
print()

print("Display records whose age is greater than 21")
df = stud_df[stud_df.Age > 21]
print(df)
print()

print("Display records whose age is greater than 20 and lives in Pune City")
df = stud_df[(stud_df.Age > 20) & (stud_df.City=="Pune")]
print(df)
print()

print("Display records whose Course is IT or lives in Mumbai City")
df = stud_df[(stud_df.Course=="IT") | (stud_df.City=="Mumbai")]
print(df)
print()

print("2nd method to fir the query")
print("Display the famale students")
df = stud_df.query('Gender=="female"')
print(df)
print()

print("Display the female students who opted for DS Course")
df = stud_df.query('Gender=="female" & Course=="DS"')
print(df)
print()

print("Display first five records")
df = stud_df.iloc[0:5,]
print(df)
print()

print("Display first three records")
df = stud_df.iloc[1:3,]
print(df)
print()

print("Display Second and Third records and 2nd column")
df = stud_df.iloc[1:3,1]
print(df)
print()

print("Display Second and Third records and 1st column to 4th column")
df = stud_df.iloc[1:3,0:4]
print(df)
print()

print("Display student names starting with 'a'")
df = stud_df[stud_df['Name'].str[0]=='a']
print(df)
print()

print("Display length of city names should be greater than 5")
df = stud_df[stud_df['City'].str.len()>5]
print(df)
print()

print("Display the records of the city names which contains 'u' or 'a'")
df = stud_df[stud_df['City'].str.contains('n|b')]
print(df)
print()
