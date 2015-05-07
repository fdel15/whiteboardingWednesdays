require 'byebug'
require_relative 'implement_a_stack.rb'
class Stack

  def peek
    self.top
  end

  def isEmpty?
    @stack.length == 0
  end

  def sort
    helper_stack = Stack.new()
    while !(self.isEmpty?)
      ele = self.pop
      while !(helper_stack.isEmpty?) && helper_stack.peek < ele
        self.push(helper_stack.pop)
      end
      helper_stack.push(ele)
    end
    while !(helper_stack.isEmpty?)
      self.push(helper_stack.pop)
    end
    return self.stack
  end
end

# 1. method sort
# => input none
# => output stack
#
# 2. [3,7,2,4,9].sort => [2,3,4,7,9]
# => [].sort => []
# => [4,4,2] => [2,4,4]
# => [3,-1,0,-3] => [-3, -1, 0, 3]
#
# 3. All elements will be integers
# => Can not use Ruby sort method
# => Use at most one additoinal stack to hold items
# => Cannot copy elements into another structure such as an array
# => stack supports push,pop,peek, and isEmpty operations

# stack = Stack.new
# stack.push(3)
# stack.push(4)
# stack.push(2)
# stack.push(4)
# stack.push(9)
# stack.push(100)
# stack.push(2)

# p stack.sort



