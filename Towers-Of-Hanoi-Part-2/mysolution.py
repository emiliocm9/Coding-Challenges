def hanoi_steps(number_discs):
  step(number_discs, 1, 2, 3)

def step(number, base, empty, goal):
  if(number > 0):
    step(number - 1, base, goal, empty)
    print(f'{base}->{goal}')
    step(number - 1, empty, base, goal)

hanoi_steps(6)