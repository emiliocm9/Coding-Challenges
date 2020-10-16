# Towers of Hanoi - Part 1
The Towers of Hanoi is a classic puzzle with 3 pegs and multiple disks of different sizes. The goal of the puzzle is to move all the disks from the first peg to the the third peg according to the following rules:
- Only one disk can be moved at a time.
- You can only move the top disc in a stack.
- No disk may be placed on top of a smaller disk.

## The Algorithm for 3 disks.

- Move the top 2 disks to the intermediate peg. How? Refer to Case 2.
- Move the bottom Disk to the Goal Peg. (See case 1)
- Move the 2 disks from the intermediate peg to the goal peg. How? Refer to Case 2.

Now that we’ve covered 1, 2 and 3 disks, can you figure out an algorithm for solving the towers of Hanoi for any number of N disks?