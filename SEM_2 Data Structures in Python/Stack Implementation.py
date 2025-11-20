class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class Stack:
    def __init__(self):
        self.top = None

    def is_empty(self):
        return self.top is None

    def push(self, data):
        new_node = Node(data)
        new_node.next = self.top
        self.top = new_node

    def pop(self):
        if self.is_empty():
            print("Stack is empty. Cannot pop from an empty stack.")
            return None
        popped_data = self.top.data
        self.top = self.top.next
        return popped_data

    def peek(self):
        if self.is_empty():
            print("Stack is empty. Cannot peek into an empty stack.")
            return None
        return self.top.data

    def display(self):
        temp = self.top
        while temp:
            print(temp.data, end=" -> ")
            temp = temp.next
        print("None")

# Example Usage:
stack = Stack()

stack.push(10)
stack.push(20)
stack.push(30)

print("Stack after push operation:")
stack.display()

print("\nPeek:", stack.peek())

popped_element = stack.pop()
print("\nPopped Element:", popped_element)

print("\nStack after pop operation:")
stack.display()
    
