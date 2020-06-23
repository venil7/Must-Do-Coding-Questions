class Linked {
  Linked(this.val, {this.next});
  final int val;
  Linked next;
}

int linked_loop_length(Linked list) {
  var i = 0;
  var cache = Map<int, int>();
  cache[list.hashCode] = i;

  while (true) {
    i += 1;
    if (list.next == null) {
      return -1;
    }
    if (cache[list.next.hashCode] != null) {
      return (i) - cache[list.next.hashCode];
    }
    cache[list.next.hashCode] = i;
    list = list.next;
  }
}
