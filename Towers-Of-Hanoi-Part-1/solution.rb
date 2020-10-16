def move(starting, goal)
  # your code here
  arr = [starting, goal]
  n = (1..3).to_a.select { |item| !arr.include?(item)}
  "#{arr[0]}->#{n[0]} #{arr[0]}->#{arr[1]} #{n[0]}->#{arr[1]}"
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3