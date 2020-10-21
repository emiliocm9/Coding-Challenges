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

def checking(string)
  stack = Stack.new
  arr = ['[', '(']
  string.each do |item|
    if arr.include?(item)
      stack.push(item)
    else
      return false if stack.empty?
      top = stack.pop
      if (top = '[' && item != ']') || (top = '(' && item != ')')
        return false
      end
    end
  end
  return stack.empty?
end

def balanced_brackets?(string)
  # your code here
  stack = Stack.new
  string.each_char do |item|
    if ['(', '[', '{', '}', ']', ')'].include?(item)
      if ['(', '[', '{'].include?(item)
        stack.push(item)
      else
        return false if stack.is_empty?
        top = stack.pop
        if (top == '[' and item != ']') or (top == '(' and  item != ')') or (top == '{' and item != '}')
          return false
        end
      end
    end
  end
  return stack.is_empty?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true