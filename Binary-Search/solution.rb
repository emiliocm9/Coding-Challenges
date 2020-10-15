def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
  m = ((min_interval + max_interval) / 2)
  return m if (m * m) == number
  return sqrt_recursive(number, min_interval, m) if ((m * m) > number) 
  return sqrt_recursive(number, m, max_interval) if ((m * m) < number)
  
end

puts sqrt(25)
puts sqrt(7056)