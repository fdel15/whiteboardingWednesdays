class Stack
  attr_accessor :top
  attr_reader :stack

  def initialize
    @stack = []
    @minima = []
    @top = nil
  end

  def push(ele)
    prev_min = self.min()
    @top = ele
    @stack << ele
    @minima << ((prev_min and prev_min < ele) ? prev_min : ele)
    return self.stack
  end

  def pop
    @stack.pop
  end

  def min
    @minima.last
  end
end