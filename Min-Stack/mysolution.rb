class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class Stack
  def initialize
    @first = nil
    @min = nil
  end
  
  def push(number)
    # your code here
    if @first.nil?
      @first = Node.new(number, @first)
      @min = @first
    else
      @first = Node.new(number, @first)
      @min = Node.new(number, @min) if number < @min.value
    end
  end
  
  def pop
    # your code here
    raise "Stack is empty" if @first.nil?
    value = @first.value
    @min = @min.next_node if @min.value == value && @min.next_node
    @first = @first.next_node
    value
  end

  def min
    # your code here
    @min.value
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3
