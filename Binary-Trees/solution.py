def leftmost_nodes_sum(array):
  i = 0
  sum = 0
  exp = 2 ** i - 1

  while exp < len(array):
    sum += array[exp]
    i = i + 1
    exp = 2 ** i - 1
  
  print(sum)

leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])