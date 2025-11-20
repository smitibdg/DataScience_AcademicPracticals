#a)
#3x3
x = [[2,1,3],[4,2,6],[3,8,0]]
#3x4
y = [[3,4,0,2],[2,1,3,0],[1,5,3,1]]
#result is 3x4
result = [[0,0,0,0],[0,0,0,0],[0,0,0,0]]

print(len(y))
print(len([0]))

#iterate through rows of x
for i in range(len(x)):

    #iterate through columns of y
    for j in range(len(y[0])):#iterate through rows of y
        for k in range(len(y)):
            result[i][j] += x[i][k] * y[k][j]
for r in result:
    print(r)
print()

#b)Transpose of matrix
x = [[12,7],[4,5],[3,8]]
result = [[0,0,0],[0,0,0]]
print(len(x))
print(len(x[0]))

#iterate through rows
for i in range(len(x)):

    #iterate through columns
    for j in range(len(x[0])):
        result[j][i] = x[i][j]
        
for r in result:
    print(r)
print()


#c)Addition of three matrices
matrix1 = [[23,43,12],[43,13,55],[23,12,13]]
matrix2 = [[4,2,-1],[5,4,-34],[0,-4,3]]
matrix3 = [[0,1,0],[1,0,0],[0,0,1]]
matrix4 = [[0,0,0],[0,0,0],[0,0,0]]
matrices_length = len(matrix1)
#adding the three matrices using nested loops
for row in range(len(matrix1)):
    for column in range(len(matrix2[0])):
        matrix4[row][column] = matrix1[row][column] + matrix2[row][column] + matrix3[row][column]
        
#printing the final matrix
print("The sum of the matrices is: ")
for res in matrix4:
    print(res)
print()
print()


#d)Inverse of matrix using inbuilt package like numpy.
import numpy as np
#finding an inverse of given array
arr = np.array([[1,2],[5,6]])
inverse_array=np.linalg.inv(arr)
print("Inverse array is: ")
print(inverse_array)
print()
#inverse of 3x3 matrix
arr=np.array([[1,2,3],[4,9,6],[7,8,9]])
inverse_array=np.linalg.inv(arr)
print("Inverse array is: ")
print(inverse_array)
print()
#inverse of 4x4 matrix
arr=np.array([[1,2,3,4],[10,11,14,25],[20,8,7,55],[40,41,42,43]])
inverse_array=np.linalg.inv(arr)
print("Inverse array is: ")
print(inverse_array)
print()
#inverse of 1x1 matrix
arr=np.array([[1]])
inverse_array=np.linalg.inv(arr)
print("Inverse array is: ")
print(inverse_array)
print()
print()



#e)linear equation with an unkonown using gauss elimination
import numpy as np
import sys
#Reading numbers of unkonwns
n=int(input("Enter Number of Unknowns: "))
#Making numpy array of nxn+1 size and initializing
#to zero for storing augmented matrix
a=np.zeros((n,n+1))
#Making numpy array of n size and initializing
#to zero for storing solution vector
x=np.zeros((n))
print("Enter Augmented Matrix Coefficients: ")
for i in range(n):
    for j in range(n+1):
        a[i][j]=float(input(f'a[{i}][{j}]='))
#Applying Gauss Elimination
for i in range(n):
    if a[i][j] == 0.0:
        sys.exit("Divide by zero detected!")
    for j in range(i+1,n):
        ratio=a[j][i]/a[i][i]
        for k in range(n+1):
            a[j][k]=a[j][k]-ratio*a[i][k]
#Back substitution
x[n-1]=a[n-1][n]/a[n-1][n-1]
for i in range(n-2,-1-1):
    x[i]=a[i][n]
    x[i]=x[i]-a[i][j]*x[i]
x[i]=x[i]-a[i][i]
#Displaying solution
print("/nRequired solution is: ")
for i in range (n):
    print(f'x{i} = {x[i]:0.2f}', end="\t")


