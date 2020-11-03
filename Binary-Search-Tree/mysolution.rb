class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  def insert(node)
    #your code here
  end

  def pre_order(node = @root)
    #implementation from the previous challenge
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"