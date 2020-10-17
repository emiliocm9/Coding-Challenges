const leftmost_nodes_sum = (array) => {
  let i  = 0;
  let sum = 0;
  let exp = 2 ** i - 1;

  while (exp < array.length) {
    sum += array[exp];
    i = i + 1;
    exp = 2 ** i - 1;
  }
  console.log(sum);
};

leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9]);