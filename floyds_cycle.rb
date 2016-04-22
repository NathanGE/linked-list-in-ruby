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
