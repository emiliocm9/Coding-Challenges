class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end

def binary_tree_height(array_tree)
  array_tree.class ==  Array ? tree = array_to_tree(array_tree, 0) : tree = array_tree
  array_tree.nil? ? 0 : 1 + [binary_tree_height(tree.left), binary_tree_height(tree.right)].max
end

puts binary_tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0])
