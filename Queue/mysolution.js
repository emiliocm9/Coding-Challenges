class Node {
  constructor(value, next_node = null) {
    this.value = value;
    this.next_node = next_node;
  }
}

class Queue {
  constructor() {
    this.head = null;
    this.tail = null;
  }

  add(number) {
    const new_node = new Node(number)
    if (this.head == null) {
      this.head = new_node;
      this.tail = new_node;
    } else {
      this.tail.next_node = new_node;
      this.tail = new_node;
    }
  };

  remove() {
    if (this.head == null) console.log(-1);
    const value = this.head.value;
    this.head = this.head.next_node;
    console.log(value);
  }
}
