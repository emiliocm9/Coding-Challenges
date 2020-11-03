def formingMagicSquare(s)
  a = [4, 9, 2, 3, 5, 7, 8, 1, 6]
  b = [8, 3, 4, 1, 5, 9, 6, 7, 2]
  flat = s.flatten
  first = flat.map.with_index { |i, idx| i = (i - a[idx]).positive? ? (i - a[idx]) : (i - a[idx]) * - 1 }.sum
  second = flat.map.with_index { |i, idx| i = (i - b[idx]).positive? ? (i - b[idx]) : (i - b[idx]) * - 1 }.sum
  if second < first
    p second
  else
    p first
  end
end

formingMagicSquare([[4, 5, 8], [2, 4, 1], [1, 9, 7]])

[[5, 3, 4], [1, 5, 8], [6, 4, 2]]
[[4, 9, 2], [3, 5, 7], [8, 1, 5]]
[[4, 8, 2], [4, 5, 7], [6, 1, 6]]
[[4, 5, 8], [2, 4, 1], [1, 9, 7]]
