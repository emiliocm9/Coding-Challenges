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
  # write your code here
  tree = array_to_tree(array_tree, 0)
  
  recursive_tree_height(tree)
end

def recursive_tree_height(tree)
  return 0 if tree.nil?
  return 1 if tree.left == nil && tree.right == nil
  
  [recursive_tree_height(tree.left), recursive_tree_height(tree.right)].max + 1
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3