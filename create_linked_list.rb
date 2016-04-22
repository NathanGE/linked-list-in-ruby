# Create a Linked List class and print values method from scratch
# then reverse it with a Stack.
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def printValues(list_node)
  if list_node
    print "#{list_node.value} -->"
    printValues(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(val)
    previous = @data
    @data = LinkedListNode.new(val.value, previous)
  end

  def pop
    popped = @data
    @data = popped.next_node
    popped
  end
end

def reverse_list(list)
  stack = Stack.new
  while list
    stack.push(list)
    list = list.next_node
  end
  stack.pop
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
