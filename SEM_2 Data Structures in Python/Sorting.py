#SORTING
#BubbleSort
print("--Bubble Sort--")
def BubbleSort(array):
    for i in range(len(array)):
        for j in range(0, len(array ) -i -1):
            if array[j] > array[j+1]:
                temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
data = [2, 45, 0, 11, 9]
print("Unsorted Array: ", data)
BubbleSort(data)
print("Sorted Array in ascending Order: ")
print(data)
print()


#Insertion Sort
print("--Insertion Sort--")
def InsertionSort(array):
    for step in range(1, len(array)):
        key = array[step]
        j = step-1
        while j >= 0 and key < array[j]:
            array[j+1] = array[j]
            j = j-1
            array[j+1] = key
data = [2, 45, 0, 11, 9]
print("Unsorted Array: ", data)
InsertionSort(data)
print("Sorted Array in ascending Order: ")
print(data)
print()


#Selection Sort
print("--Selection Sort--")
array = [2, 45, 0, 11, 9]
print("Unsorted Array: ", array)
for i in range(len(array)):
    min_idx = i
    for j in range(i+1, len(array)):
        if array[min_idx] > array[j]:
            min_idx = j
    temp = array[i]
    array[i] = array[min_idx]
    array[min_idx] = temp
print("Sorted array using Selection Sort")
for i in range(len(array)):
    print("%d" % array[i], end=" ")
print()
print()


#SEARCHING
#Linear Search
print("--Linear Search--")
def LinearSearch(list, n, key):
    for i in range(0, n):
        if list[i] == key:
            return i
    return -1
list = [1, 3, 5, 4, 7, 9]
n = len(list)
key = int(input("Enter a key to search: "))
result = LinearSearch(list, n, key)
if result == -1:
    print("Element not found")
else:
    print("Element found at index:", result)
print()


#Binary Search
print("--Binary Search--")
def BinarySearch(array, key, low, high):
    while low <= high:
        mid = (low+high)//2
        if array[mid] == key:
            return mid
        elif array[mid] < key:
            low = mid + 1
        else:
            high = mid - 1
    return -1
array = [1, 3, 5, 7, 9]
key = int(input("Enter a key to search: "))
result = BinarySearch(array, key, 0, len(array)-1)
if result == -1:
    print("Element not found")
else:
    print("Element found at index:", result)
print()
