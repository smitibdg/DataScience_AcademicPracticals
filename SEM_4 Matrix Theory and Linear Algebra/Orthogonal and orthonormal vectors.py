#a. Orthonormal Vectors
import numpy
#taking two vectors
v1 = [[1, -2, 4]]
v2 = [[2, 5, 2]]
#transpose of v1
transposeOfV1 = numpy.transpose(v1)
#Matrix multiplication of both vectors.
result = numpy.dot(v2, transposeOfV1)
print("Result = ", result)
print()

#b. Projections and Least Squares.
import numpy as np
from scipy.linalg import lstsq
#example data
a = np.array([[1,1], [1,2], [1,3]])
b = np.array([1,2,3])
#Solve least-squares problem
x, residuals, rank, s = lstsq(a,b)
print("Solution: ", x)
print("Residuals: ", residuals)
print()

#c.Projection of a Vector onto a Subspace.
def project_vector_onto_subspace(a,b):
    """Project vector b onto the column space of matrix A."""
    A_T_A_inv = np.linalg.inv(A.T @ A)
    projection_matrix = A @ A_T_A_inv @ A.T
    projection = projection_matrix @ b 
    return projection
A = np.array([[1,0], [0,1], [1,1]]) #Basis of the subspace
b = np.array([3,4,5]) #Vector to project
projection = project_vector_onto_subspace(A,b)
print("Projection of b onto subspace of A:\n", projection)
