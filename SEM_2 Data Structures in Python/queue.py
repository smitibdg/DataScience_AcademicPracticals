class Queue:
    # To initialize the object.
    def __init__(self, c):
        self.queue = []
        self.front = 0
        self.rear = 0
        self.capacity = c

    # Function to insert an element at the rear of the queue
    def Enqueue(self, data):
        # Check queue is full or not
        if self.rear >= self.capacity:
            print("\nQueue is full... cannot append more elements")
        else:
            self.queue.append(data)
            self.rear += 1

    # Function to delete an element from the front of the queue
    def Dequeue(self):
        # If queue is empty
        if self.front > self.rear:
            print("Queue is empty.. cannot delete elements")
        else:
            x = self.queue.pop(0)
            self.front +=1

    # Function to print queue elements
    def Display(self):
        if self.front >= self.rear:
            print("\nQueue is Empty")

        if self.front < self.rear:
            # Traverse front to rear to print elements
            for i in self.queue:
                print(i, "  ", end='')


print("Enter the capacity of queue:")
cap = int(input())  #let cap=3
q = Queue(cap)

# Inserting elements in the queue
q.Enqueue(20)
q.Enqueue(30)
q.Enqueue(40)
q.Enqueue(50) #50 will not be inserted as it exceeds the capacity of queue. Queue is Full.

#Displaying the queue
print("\nThe elements in the queue after performing enqueue: ")
q.Display()

#Deleting the elements from queue
q.Dequeue()
q.Dequeue()
print("\nThe remaining elements in the queue after performing 2 dequeue: ")
q.Display()

q.Dequeue()
print("\nThe remaining elements in the queue after performing 1 dequeue: ")
q.Display()
