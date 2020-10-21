# Computational Complexity
A good algorithm doesn’t only find an answer, it finds it quickly and efficiently. But how do we evaluate how fast an algorithm is?

Watch the following video to learn more about Computational Complexity.

https://www.youtube.com/watch?v=YoZPTyGL2IQ&feature=youtu.be

## Challenge

Here’s a simple algorithm (though non-optimal) to find a match of a substring word within a longer string text. It returns the index of the match, or -1 if no match is found.

```ruby
def index_of(text, word)
  (0..(text.size - word.size)).each do |i| # loop through text
    j = 0
    # loop through word
    while text[i + j] == word[j] # character match
      j += 1
      if j == word.size
        return i
			end
    end
  end
	
  return -1
end
```

### Let n be the length of the text and m be the length of the word. What is the worst-case running-time of this algorithm?

- Option: O(n)
 
 
- Option: O(nm)
 
 
- Option: O(n log m)
 
 
- Option: O(n^2)