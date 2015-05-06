#continues class defined in implement_a_linked_list.rb

require_relative "implement_a_linked_list.rb"

class LinkedList
  # def sort
  #   clone = self
  #   i = 0
  #   while clone[i].next
  #     node1 = clone[i]
  #     node2 = node1.next

  #     if node1.data > node2.data
  #       clone[i]
  #     end



  #   end
  # end

end

node1 = Node.new(2)

node2 = Node.new(3)

list = LinkedList.new(node2)

list.insert(node1, 1)

# list.swap_nodes(node2, node1)

p list[0].data
p list[1].data
p list[1].next

p "*" * 15
node1.next = node2
list.head = node1

p list[0].data
p list[0].next
# p list[1].next

# list[1] = node1


