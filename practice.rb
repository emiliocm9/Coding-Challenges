def binary_tree_height(array_tree)
  # write your code here
  stack = []
  count = 0
  while count < array_tree.length
    for i in (0..count)
      arr = []
      arr.push(array_tree[count + i])
    end
    stack.push(arr)
    count *= 2
  end
  p stack
end

binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3