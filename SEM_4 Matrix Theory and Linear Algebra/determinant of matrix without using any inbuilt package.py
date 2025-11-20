#a) Function for finding the determinent of a matrix.
def getDet(mat, n):
    #Base case: if the matrix is 1x1
    if n == 1:
        return mat[0][0]
    #Base case: if the matrix is 2x2
    if n == 2:
        return mat[0][0] * mat[1][1] - \
               mat[0][1] * mat[1][0]
    #Recursive case for larger matrices
    res = 0
    for col in range(n):
        #Create  a submatrix by removing the first
        #row and the current column
        sub = [[0] * (n - 1) for _ in range(n - 1)]
        for i in range(1, n):
            subcol = 0
            for j in range(n):
                #Skip the current column
                if j == col:
                    continue
                
                #Fill the submatrix
                sub[i - 1][subcol] = mat[i][j]
                subcol += 1
        #Cofactor expansion
        sign = 1 if col % 2 == 0 else -1
        res += sign * mat[0][col] * getDet(sub, n - 1)
            
    return res

#Driver program to test the above function
mat = [[1, 0, 2, -1],
       [3, 0, 0, 5],
       [2, 1, 4, -3],
       [1, 0, 5, 0]]
print(getDet(mat, len(mat)))
print()



#b) Finding determinant of matrix using any inbuilt package.
#Importing NumPy Package
import numpy as np
#Creating a 2x2 NumPy Matrix
n_array = np.array([[50, 29], [30, 44]])
print("NumPy Matrix is: ")
print(n_array)
#Calculating the determinent of matrix
det = np.linalg.det(n_array)
print("\nDeterminent of 2x2 matrix: ")
print(int(det))
