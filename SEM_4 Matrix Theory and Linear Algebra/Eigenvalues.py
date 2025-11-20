#A.1
import numpy as np
mat = np.array([[1, -2], [1, 3]])
#Original Matrix
print(mat)
print("")
evalue, evect = np.linalg.eig(mat)
#Eigen values of the said matrix
print(evalue)
print("")
print(evect)
print()
print()


#A.2
import numpy as np
mat = np.array([[1, 2, 3], [1, 3, 4], [3, 2, 1]])
#Original Matrix
print(mat)
print("")
evalue, evect = np.linalg.eig(mat)
#Eigen values of the said matrix
print(evalue)
print("")
print(evect)
print()
print()



#B
#python program to check if matrix is diagonal matrix or not.
#Function to check if matrix is diagonal matrix or not.
def isDiagonalMatrix(mat):
    n = len(mat)
    for i in range(0,n):
        for j in range(0,n):  #condition to check other elements
            #except main diaagonal are zero or not.
            if ((i != j) and (mat[i][j] != 0)):
                return False
        return True
mat = [[4, 0, 0, 0], [0, 7, 0, 0], [0, 0, 5, 0], [0, 0, 0, 1]]
if (isDiagonalMatrix(mat)):
    print("True")
else:
    print("False")
