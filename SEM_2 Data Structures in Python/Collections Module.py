#Counters
print("--Counters--")
from collections import Counter
#with sequence of items
print(Counter(['a', 'b', 'b', 'a', 'c', 'a', 'c', 'b', 'b']))
#with dictionary
print(Counter({'a':3, 'b':4, 'c':2}))
#with keyword arguments
print(Counter(a=3, b=4, c=2))
print()


#ChainMap
print("--ChainMap--")
from collections import ChainMap
d1 = {'a':3}
d2 = {'b':4}
d3 = {'c':2}
c = ChainMap(d1, d2)
print("All ChainMap contents are: ",c)
#accessing values using key name
print(c['a'])
#accessing values using values() method
print(c.values())
#accessing values using keys() method
print(c.keys())
#adding new dictionary using new_child() method
chain = c.new_child(d3)
print("Display new ChainMap: ")
print(chain)
print()


#DefaultDict
print("--DefaultDict--")
from collections import defaultdict
def def_value():
    return 'Not Present'
d = defaultdict(def_value)
#alternative method
#d = defaultdict(lambda: 'Not Present')
d['s'] = 23
d['r'] = 26
print(d['s'])
print(d['r'])
print(d['rs'])
print()


#OrderedDict
print("--OrderedDict--")
from collections import OrderedDict
od = OrderedDict()
od['a']=1
od['b']=2
od['c']=3
print("Before Deleting")
for key,value in od.items():
    print(key,value)
#deleting a element
od.pop('a')
print("After Deleting")
for key,value in od.items():
    print(key,value)
#reinserting the element
od['a']=1
print("After Re-Inserting")
for key,value in od.items():
    print(key,value)
print()


#NamedTuple
print("--NamedTuple--")
from collections import namedtuple
# Declaring namedtuple()
Student = namedtuple('Student',['name','age','DOB'])
# Adding values
S = Student('Jack', 19, 25041997)
# Access using index
print("The Student age using index is: ",end =" ")
print(S[1])
# Access using name
print("The Student name using keyname is: ",end =" ")
print(S.name)
print()


#Deque
print("--Deque--")
from collections import deque
#initializing deque
de = deque([1, 2, 3])
print(de)
#using append() method to insert at right
de.append(4)
print(de)
#using append() method to insert at left
de.appendleft(0)
print(de)
#using pop() method to remove from right
de.pop()
print(de)
#using popleft() method to remove from left
de.popleft()
print(de)
print()


#UserDict
print("--UserDict--")
from collections import UserDict
class MyDict(UserDict):
    #function to stop deletion from dictionary
    def __del__(self):
        raise RuntimeError("Deletion Not Allowed")
    #function to stop pop from dictionary
    def pop(self, s=None):
        raise RuntimeError("Deletion Not Allowed")
    #function to stop popitem from dictionary
    def popitem(self, s=None):
        raise RuntimeError("Deletion Not Allowed")
d = MyDict({'a':1, 'b':2})
d.pop('a')
print()


#UserList
print("--UserList--")
from collections import UserList
class MyList(UserList):
    #function to stop deletion from list
    def remove(self, s=None):
        raise RuntimeError("Deletion Not Allowed")
    #function to stop pop from list
    def pop(self, s=None):
        raise RuntimeError("Deletion Not Allowed")
l = MyList([1, 2, 3])
#Inserting an element in list
l.append(4)
print("After Insertion")
print(l)
#deletion from list
l.remove()
print()


#UserString
print("--UserString--")
from collections import UserString
class MyString(UserString):
    #function to append string
    def append(self, s):
        self.data += s
    #function to remove from string
    def remove(self, s):
        self.data = self.data.replace(s, "")
s1 = MyString("program")
print("Original String:",s1.data)
#appending to string
s1.append('s')
print("String after Appending: ",s1.data)
#removing from string
s1.remove('r')
print("String after Removing: ",s1.data)
