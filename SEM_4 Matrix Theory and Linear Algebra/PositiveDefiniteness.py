#a).test for positive definiteness
import numpy as np
#creating array
arr = np.array([[7, 6], [7, 6]])
#Displaying oroginal array.
print("Original Array:\n", arr,"\n")
#Check all eigen value
res = np.all(np.linalg.eigvals(arr)>0)
#Displaying Result
if(res):
    print("Is matrix positive definite:\n",res)
else:
    print("Is matrix positive definite:\n",res)
print()
print()


#b). Compute the Quadratic Form of Mtarix.
import numpy as np
a = np.array([[2, 1], [1, 2]])
#Define a vector x
x = np.array([1, 3])
#Compute the Quadratic Form: x^T*A*x
quadratic_form = x.T @ a @ x
print("Quadratic Form: ", quadratic_form)
