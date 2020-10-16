def hanoi_steps(number_of_discs)
  # your code here
  steps(number_of_discs, 1, 2, 3)
end

def steps(n, base, empty, goal)
  if n > 0
    steps(n-1, base, goal, empty)
    puts "#{base}->#{goal}"
    steps(n-1, empty, base, goal)
  end
end

hanoi_steps(2)
# => 1->2
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2 
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3