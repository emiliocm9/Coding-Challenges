# Complete the appendAndDelete function below.
def appendAndDelete(s, t, k)
  return 'Yes' if s == t
  if s.length < t.length
      if (s.length + t.length) <= k
          return 'Yes'
      elsif k % (t.length - s.length) == 0 && s.length != 1 
          return 'Yes'
      else
          return 'No'
      end
  else
      stack = []
      idx = 0
      while s[idx] == t[idx]
          idx += 1
      end
      stack << s[idx..-1].length
      stack << t[idx..-1].length
      stack.sum <= k ? 'Yes' : 'No' 
  end
end

p appendAndDelete('hackerhappy', 'hackerrank', 9)
