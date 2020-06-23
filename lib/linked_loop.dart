class Linked {
  Linked(this.val, {this.next});
  final int val;
  Linked next;
}

bool linked_loop(Linked list) {
  var by_one = list.next;
  var by_two = list.next?.next;
  while ((by_two != null && by_one != null)) {
    by_one = by_one.next;
    by_two = by_two?.next?.next;
    // if (by_two == null || by_one == null) return false;
    if (by_one == by_two) return true;
  }
  return false;
}
