class Node:
    def __init__(self, data):
        self.data = data
        self.previous = None
        self.next = None

class DoublyLinkedList:
    
    def __init__(self):
        self.head = None
        self.tail = None

    def insert_at_beginning(self, data):
        new_node = Node(data)

        if self.head is None:
            self.head = self.tail = new_node
        else:
            new_node.next = self.head
            self.head.previous = new_node
            self.head = new_node

    def insert_at_end(self, data):
        new_node = Node(data)

        if self.head is None:
            self.head = self.tail = new_node
        else:
            new_node.previous = self.tail
            self.tail.next = new_node
            self.tail = new_node

    def insert_at_position(self, position, data):
        new_node = Node(data)
        temp = self.head

        for i in range(1, position - 1):
            if temp is None:
                print("Position out of bounds.")
                return
            temp = temp.next

        if temp is None:
            print("Position out of bounds.")
            return

        new_node.previous = temp
        new_node.next = temp.next
        if temp.next:
            temp.next.previous = new_node
        temp.next = new_node

    def delete_at_beginning(self):
        if self.head is None:
            print("List is empty. Cannot delete from an empty list.")
            return

        if self.head.next is None:
            self.head = self.tail = None
        else:
            self.head = self.head.next
            self.head.previous = None

    def delete_at_end(self):
        if self.head is None:
            print("List is empty. Cannot delete from an empty list.")
            return

        if self.head.next is None:
            self.head = self.tail = None
        else:
            self.tail = self.tail.previous
            self.tail.next = None

    def delete_at_position(self, position):
        if self.head is None:
            print("List is empty. Cannot delete from an empty list.")
            return

        temp = self.head

        for i in range(position - 1):
            if temp is None:
                print("Position out of bounds.")
                return
            temp = temp.next

        if temp is None:
            print("Position out of bounds.")
            return

        if temp.previous:
            temp.previous.next = temp.next
        else:
            self.head = temp.next

        if temp.next:
            temp.next.previous = temp.previous
        else:
            self.tail = temp.previous

    def display(self):
        temp = self.head
        while temp: 
            print(str(temp.data) + " ")
            temp = temp.next
            if temp == self.head:
                break

#Example Usage:
dlist = DoublyLinkedList()
dlist.insert_at_beginning(20)
dlist.insert_at_beginning(30)
dlist.insert_at_end(70)
dlist.display()

print("\nInsertion at 3rd position:")
dlist.insert_at_position(3, 90)
dlist.display()

print("\nDeletion at beginning:")
dlist.delete_at_beginning()
dlist.display()

print("\nDeletion at end:")
dlist.delete_at_end()
dlist.display()

print("\nDeletion at 2nd position:")
dlist.delete_at_position(2)
dlist.display()

