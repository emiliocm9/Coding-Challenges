def leftmost_nodes_sum(array)
  idx = 0
  arr = []
  while idx < array.length
    arr << array[idx]
    idx = (idx * 2) + 1
  end
  arr.sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11