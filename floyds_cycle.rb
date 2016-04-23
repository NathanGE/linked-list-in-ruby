# Use Floyd's Cycle Detection Algorithm to detect an infinite Linked List
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def cycle?(list_node)
  return false if list_node.nil? || list_node.next_node.nil?
  tortoise = list_node
  hare = list_node
  while hare.next_node.next_node do
    tortoise = tortoise.next_node
    hare = hare.next_node.next_node
    return true if tortoise == hare
  end
  false
end
