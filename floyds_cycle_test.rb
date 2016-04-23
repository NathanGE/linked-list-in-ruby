require 'minitest/autorun'
require_relative 'floyds_cycle'

class TestFloydsCycle < Minitest::Unit::TestCase
  def test_floyd
    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    node3 = LinkedListNode.new(12, node2)
    node1.next_node = node3
    node4 = LinkedListNode.new(22)
    node5 = LinkedListNode.new(43, node4)
    assert_equal true, cycle?(node3)
    assert_equal false, cycle?(node5)
    assert_equal false, cycle?(node4)
  end
end
