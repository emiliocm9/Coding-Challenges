## A Tree in an Array
To store a Binary Tree in an Array, we just need to determine the order  that we store the Nodes in. A good order is "breadth-first" where we  store the items in order top-down and left-to-right of the tree.

Here's a tree represented as an array:

![image](https://storage.googleapis.com/replit/images/1550025869146_a7f5c54634bd5c5dde8faf1010d29f22.svg)

And this is the tree 'unfolded':

![image](https://storage.googleapis.com/replit/images/1550025906495_68883317b5833ac77a4ca57385639dd8.svg)

Notice that 5 only has one child Node, so the other child is represented as 0 in the above array. This is OK as long as we don't need to store  actual 0 values.

### Challenge

The input for this challenge will provide an array of numbers in the above "breadth-first" format, and use 0's for non-nodes. 
Can you print out the sum of the Leftmost side of the Tree?

Tip: A number located at position i in an array will have it's left child located at the position 2i+1 in the array. 

### Test case example:

```ruby
leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11
```

Go down the left-hand side of the tree to get the sum: 2+7+2 = 11. You can take a look at the image of the tree above.