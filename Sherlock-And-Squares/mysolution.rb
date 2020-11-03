# Complete the squares function below.
def squares(a, b)
  Math.sqrt(b).floor() - Math.sqrt(a).ceil() + 1
end

p squares(35, 70)