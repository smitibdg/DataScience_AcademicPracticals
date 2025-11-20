#a) Addition, Subtraction, Multiplication and Division of vector
import numpy as np
list1 = [10,20,30,40,50]
list2 = [2,3,4,5,15]

vec1 = np.array(list1)
vec2 = np.array(list2)

print("Vector created from List 1: ")
print(vec1)
print("Vector created from List 2: ")
print(vec2)

vec_add = vec1 + vec2
print("Addition of Two Vectors: ",vec_add)

vec_sub = vec1 - vec2
print("Subtraction of Two Vectors: ",vec_sub)

vec_mul = vec1 * vec2
print("Multiplication of Two Vectors: ",vec_mul)

vec_div = vec1 / vec2
print("Division of Two Vectors: ",vec_div)
print()
print()
