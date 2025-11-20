class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class Queue:
    def __init__(self):
        self.front = None
        self.rear = None

    def is_empty(self):
        return self.front is None

    def enqueue(self, data):
        new_node = Node(data)
        if self.is_empty():
            self.front = self.rear = new_node
        else:
            self.rear.next = new_node
            self.rear = new_node

    def dequeue(self):
        if self.is_empty():
            print("Queue is empty. Cannot dequeue from an empty queue.")
            return None
        dequeued_data = self.front.data
        self.front = self.front.next
        if self.front is None:
            self.rear = None
        return dequeued_data

    def peek(self):
        if self.is_empty():
            print("Queue is empty. Cannot peek into an empty queue.")
            return None
        return self.front.data

    def display(self):
        temp = self.front
        while temp:
            print(temp.data, end=" -> ")
            temp = temp.next
        print("None")

# Example Usage:
queue = Queue()

queue.enqueue(10)
queue.enqueue(20)
queue.enqueue(30)

print("Queue after enqueue operation:")
queue.display()

print("\nPeek:", queue.peek())

dequeued_element = queue.dequeue()
print("\nDequeued Element:", dequeued_element)

print("\nQueue after dequeue operation:")
queue.display()




