# Start with your code from LinkedList challenge.
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class Stack
  attr_accessor :top, :minimum
  def initialize
    @top = nil
    @min = nil
  end
  
  def push(number)
    @top = Node.new(number, @top)
    @min = @top if @min.nil?
    @min = Node.new(number, @min) if number < minimum
  end
  
  def pop
    # your code here
    return if @top.nil?
    @min = @min.next_node if @top.value.eql? @min.value
    value = @top.value
    @top = @top.next_node
    value
  end
  
  def minimum
    @min.value unless @min.nil?
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3