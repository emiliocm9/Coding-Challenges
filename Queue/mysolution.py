class Node:
  def __init__(self, value, next_node = None):
      self.value = value
      self.next_node = next_node

class Queue:
  def __init__(self):
    self.head = None
    self.tail = None
  
  def add(self, number):
    new_node = Node(number)
    if (self.head == None):
      self.head = new_node
      self.tail = new_node
    else:
      self.tail.next_node = new_node
      self.tail = new_node
  
  def remove(self):
    value = self.head.value
    self.head = self.head.next_node
    print(value)

queue = Queue()
queue.add(5)
queue.add(3)
queue.remove()