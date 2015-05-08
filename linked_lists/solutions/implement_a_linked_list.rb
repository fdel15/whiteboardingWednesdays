class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList
  attr_reader :head

  def initialize(head=nil)
    @head = head
  end

  def insert(node, index=0)
      if index == 0
        node.next = @head
        @head = node
      else
        node.next = self.[](index)
        prev_node = self.[](index - 1)
        prev_node.next = node
      end
      return self
  end

  def remove(index)
    if index == 0
      removed_node = @head
      @head = @head.next
    else
      removed_node = self.[](index)
      next_node = removed_node.next
      prev_node = self.[](index - 1)
      prev_node.next = next_node
    end
    removed_node
  end

  def [](int=0)
    i = 0
    current_node = @head
    while i < int
     return nil if current_node.next.nil?
      current_node = current_node.next
      i += 1
    end
    current_node
  end


end