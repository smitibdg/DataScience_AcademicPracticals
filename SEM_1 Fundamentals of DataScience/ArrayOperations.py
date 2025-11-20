# Pythom program to demonstrate
# Creation of Array

# importing "array" for array creations
import array as arrObject

# creating an array with integer type
#li = [1,2,3,4]
a = arrObject.array('i', [1,2,3,88])
print()
print("length of array = ",len(a))
# printing original array
print("The new created array is : ", end=" ")
for i in range(0, len(a)):
    print(a[i], end=" ")
# print()

# creating an array with double type
b = arrObject.array('d', [2.5, 3.2, 3.3])
print()
print("length of array b = ", len(b))
# printing original array
print("\nThe new created float array is : ", end=" ")
for i in range(0, len(b)):
    print(b[i], end=" ")
#print()

#inserting array using insert() function
a.insert(1, 4)
a.append(80)
print()
print("Array a after insertion : ", end=" ")
for i in range(0, len(a)):
    print(a[i], end=" ")
# print()

# adding an element using append()
b.append(4.4)
print()
print("Array b after appending : ", end=" ")
for i in range(0, len(b)):
    print(b[i], end=" ")
# print()

#accesing specific element from array
print()
print("4th element of array a : ", a[3])

# using pop() funtion to remove element at 1st position
print("The poped element is : ", a.pop(1))
print()

# printing array after popping
print("The array after popping is : ")
for i in range(0, len(a)):
    print(a[i], end=" ")
# print()

#using remove() to remove 1st occurance of 1
a.remove(1)
print()
print("The array after removing is : ")
for i in range(0, len(a)):
    print(a[i], end=" ")
# print()

# Slicing Array
Sliced_array = a[1:3]
print()
print("\nSlicing elements of array a in a range 1-3: ")
print(Sliced_array)

# Print elements from a pre-defined point to end
Sliced_array = a[1:]
print("\nElements Sliced from 1st position till the end of array a: ")
print(Sliced_array)

# Printing elements from beginning till end
Sliced_array = a[:]
print("\nPrinting all elements using slice position of array a: ")
print(Sliced_array)

print("last element = ",a[-1])

Sliced_array = a[::-1]
print("\nReversing all elements using slice operation of array a: ")
print(Sliced_array)

print()
print("Index value for 88 = ",a.index(88))

a[1]=100
print("a[1] is updated with new value")
for i in range(0, len(a)):
    print(a[i], end=" ")
print()

print()
print("count funtion: Total occurence of the specified element")
print("count of 80 is :", a.count(80))

print()
print("Reverse of an array")
a.reverse()

print(a, end=" ")
print()

print()
print("extend() method")
a.extend([89,90,91,92,93,94,95])
for i in range(0, len(a)):
    print(a[i], end=" ")
print()

print()
