class Stack {
  Stack(this.val, {this.next});
  final Stack next;
  final int val;
  bool get bottom => next == null;
  Stack add(int val) => Stack(val, next: this);
  List<int> toList() => [
        val,
        ...(next.bottom ? [next.val] : next.toList())
      ];
}

Stack add_sorted(Stack s, int val) {
  if (s == null) return Stack(val);
  if (val > s.val) return s.add(val);
  final pop = s.val;
  return add_sorted(s.next, val).add(pop);
}

Stack sort_stack(Stack s) {
  if (s == null) return s;
  final val = s.val;
  final sorded = sort_stack(s.next);
  return add_sorted(sorded, val);
}

final stack = Stack(5).add(7).add(3).add(1).add(9);
