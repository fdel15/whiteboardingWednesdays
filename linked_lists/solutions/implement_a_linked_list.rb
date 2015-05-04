class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList
  attr_accessor :head

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
      @head = @head.next
    else
      remove_node = self.[](index)
      next_node = remove_node.next
      prev_node = self.[](index - 1)
      prev_node.next = next_node
    end
  end

  def [](int)
    i = 0
    current_node = @head
    while i < int
      current_node = @head.next
      i += 1
    end
    current_node
  end


end