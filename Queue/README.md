# Queue

Create a Queue with the two methods add and remove. Use your LinkedList class to keep track of the elements internally.
In this challenge, there's one more detail: If remove is called on the empty Queue, return -1.

## Example

This is an example of a test case:

```ruby
queue = Queue.new
queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
```

The numbers come out in the order they went in, and the final remove returns a -1 since the queue is empty.