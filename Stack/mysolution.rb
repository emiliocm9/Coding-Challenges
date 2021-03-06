# Start with your code from LinkedList challenge.
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
  end

  def push(value)
    @first = Node.new(value, @first)
  end
  alias_method :"<<", :push

  def pop
    raise "Stack is empty" if is_empty?
    value = @first.value
    @first = @first.next_node
    value
  end

  def is_empty?
    @first.nil?
  end
end

stack = Stack.new
stack.push(3)
stack << 2
puts stack.pop
puts stack.pop
## => 5
#
#stack.push(2)
#stack.push(7)
#puts stack.pop
## => 7
#
#puts stack.pop
## => 2
#
#puts stack.pop
## => 3