 # LIFO Stack implementation using a Python list as its underlying storage.
class MyStack:
    # Create an empty stack.
    def __init__(self):
        self.top = -1
        self.data = []

    # Add element e to the top of the stack
    def push(self, e):
        self.data.append(e)
        self.top += 1

  # Remove and return the element from the top of the stack
    # (i.e., LIFO). Raise exception if the stack is empty.
    def pop(self):
        if self.top == -1:
            raise IndexError('Stack is empty')
        else:
            self.top -= 1
            return self.data.pop()

    # Return (but do not remove) the element at the top of
    # the stack. Raise Empty exception if the stack is empty.
    def peek(self):
        if self.top < 0:
            raise IndexError('Stack is empty')
        else:
            return self.data[self.top]

    # A stack based function to reverse a string
    def reverse(self, s):
        n = len(s)

        # Push all characters of string to stack
        for i in range(0, n, 1):
            self.push(s[i])

        # Making the string empty since all characters are saved in stack
        s = ""

        # Pop all characters of string and put them back to string
        for i in range(0, n, 1):
            s += self.pop()

        return s

st = MyStack()
oringinalStr = "malayalam"
reverseStr = st.reverse(oringinalStr)

if oringinalStr == reverseStr:
    print("palindrome")
else:
    print("not palindrome")
