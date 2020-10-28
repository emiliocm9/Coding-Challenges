
def tree_height(tree_as_list)
  # your code here
  arr = []
  pack = []
  i = 1
  idx = 0
  while i < tree_as_list.length
    pack = []
    (i).times do
      pack << tree_as_list[idx]
      idx += 1
    end
    arr << pack
    i *= 2
  end
  arr.each do |element|
    element.delete(0)
    element.delete(nil)
    arr.delete(element) if element.empty?
  end
  arr.length
end
  
puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 4

puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
# => 4
  