def cutTheSticks(arr)
  result = []
  container(arr, result)
end

def container(arr, result)
  a = arr.min
  idx = 0
  result << arr.length
  (arr.length).times do
      if arr[idx] - a >= 0
         arr[idx] -= a
      end
      idx += 1
  end
  arr.delete(0)
  arr.empty? ? result : container(arr, result)
end