class ListNode<T> {
  T value;
  ListNode<T> next;
  ListNode(this.value) {
    assert(this.value != null);
  }
  void append(T nextValue) {
    if (next == null) {
      next = ListNode<T>(nextValue);
      return;
    }
    return next.append(nextValue);
  }

  String toString() {
    return '${value},${next == null ? '' : next.toString()}';
  }

  ListNode<T> reverse() {
    var rev = ListNode(value);
    var t = this;
    while (t.next != null) {
      t = t.next;
      rev = ListNode(t.value)..next = rev;
    }
    return rev;
  }
}
