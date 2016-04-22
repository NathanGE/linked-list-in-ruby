require 'minitest/autorun'
require_relative 'linked_list1'

class TestLinkedList1 < MiniTest::Unit::TestCase
  def test_reverse_list
    expected = "37 --> 99 --> 12 --> nil"
    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    node3 = LinkedListNode.new(12, node2)
    assert_equal expected, print_values(reverse_list(node3))
  end

  def test_stack
    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    stack = Stack.new
    stack.push(node2)
    assert_equal 99, stack.pop
  end
end
