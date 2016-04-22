# Use Floyd's Cycle Detection Algorithm to detect an infinite Linked List
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def floyds_cycle(listNode)
  tortoise = listNode
  hare = listNode
  while hare.next_node.next_node do
    tortoise = tortoise.next_node
    hare = hare.next_node.next_node
    return 'Loop found' if (tortoise == hare)
  end
  'No loop found'
end

# node1 = LinkedListNode.new(37)
# node2 = LinkedListNode.new(99, node1)
# node3 = LinkedListNode.new(12, node2)
# node4 = LinkedListNode.new(24, node3)
# node1.next_node = node3

# p floyds_cycle(node4)
