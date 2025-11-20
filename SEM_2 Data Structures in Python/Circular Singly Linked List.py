#CIRCULAR LINKED LIST
class Node:
    def __init__(self,data):
        
        self.data=data
        self.next=None
class CLL:
    def __init__(self):
        
        self.head=None
        self.tail=None

    def insert_AtBeginning(self,new_data):
        #Allocate a new_node and assign data elemnt
        new_node = Node(new_data)
        if self.head is None:
            self.head = new_node
            self.tail = new_node
        else:
            #make next node of new_node as head
            new_node.next = self.head
            self.tail.next = new_node
            #make new_node as head
            self.head = new_node

    def insert_AtPosition(self,position,new_data):
        #create a new node
         new_node = Node(new_data)
         temp = self.head
         for i in range(1,position-1):
             temp = temp.next
         new_node.next = temp.next
         temp.next = new_node
    def insert_AtEnd(self,new_data):
        new_node = Node(new_data)
        if self.head is None:
            self.head = new_node
        else:
            self.tail.next = new_node
            self.tail = new_node
            self.tail.next = self.head

    def display(self):
        if self.head is None:
            print("CLL is empty")
        else:
            temp=self.head
            print(temp.data, end=" ")
            while temp.next != self.head:
                temp = temp.next
                print(temp.data, end=" ")
                
    #deletion from beginning
    def delete_First(self):
        temp = self.head
        self.head = temp.next
        self.tail.next = self.head
        temp = None

        #deletion from last
    def delete_Last(self):
        curr = self.head
        while curr.next!=self.head:
            prev = curr
            curr = curr.next

        prev.next = self.head
        curr.next = None
        curr = None
        self.tail = prev

        #deletion at position
    def delete_AtPosition(self,position):
        curr = self.head

        for i in range(1,position):
            prev = curr
            curr = curr.next
            
        prev.next = curr.next
        curr = None

clist = CLL()
clist.display()
clist.insert_AtBeginning(20)
clist.insert_AtBeginning(30)

clist.insert_AtEnd(40)
clist.insert_AtEnd(50)

clist.insert_AtPosition(3,70)
clist.display()
