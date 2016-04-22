# Reverse a Linked List without another data structure
class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else      
    print "nil\n"
    return
  end
end

def reverse_list(list, previous=nil)
  while list
    previous = LinkedListNode.new(list.value, previous)
    list = list.next_node
  end
  previous
end
