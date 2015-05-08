require 'byebug'
require_relative 'implement_a_linked_list.rb'

class LinkedList

  def sort
    return self if self.head.nil?
    sorted_list = LinkedList.new()

    while self.head.next
      to_add = self.head
      counter = 0
      index = counter
      while self[counter]
      if to_add.data < self[counter].data
        to_add = self[counter]
        index = counter
      end
        counter += 1
      end
      sorted_list.insert(self.remove(index))
    end
    sorted_list.insert(self.head)
    sorted_list
  end
end

#
# 1. method: sort
# => input: none
# => output: linked_list

# 2. [1,0,4,2,3].sort => [0,1,2,3,4]
# => [8,3,1,7,0].sort => [0,1,3,7,8]
# => [].sort => []

# 3. NO Arrays
# => Time constraint: none
# => Space contstraint: none
# => Use methods defined in implement_a_linked_list.rb

a = LinkedList.new()
one = Node.new(1)
zero = Node.new(0)
four = Node.new(4)
two = Node.new(2)
three = Node.new(3)


a.insert(three)
a.insert(two)
a.insert(four)
a.insert(zero)
a.insert(one)

p a.sort






