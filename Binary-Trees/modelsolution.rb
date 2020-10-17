def leftmost_nodes_sum(array)
  # your code here
  i = 0
  sum = 0
  exp = 2 ** i - 1
  
  while exp < array.size
    sum += array[exp]
    i = i + 1

    exp = 2 ** i - 1
  end
  
  sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11