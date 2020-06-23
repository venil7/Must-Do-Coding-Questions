class Linked {
  final int val;
  final Linked next;
  bool get terminal => bottom == null && next == null;
  Linked bottom;
  Linked(this.val, {this.next, this.bottom});
  Linked addBottom(int v) {
    this.bottom = Linked(v);
    return this.bottom;
  }

  List<int> toList() {
    if (terminal) return [val];
    return [val, ...bottom.toList()];
  }
}

final list = Linked(
  5,
  bottom: Linked(7, bottom: Linked(8, bottom: Linked(30))),
  next: Linked(
    10,
    bottom: Linked(20),
    next: Linked(
      19,
      bottom: Linked(22, bottom: Linked(50)),
      next: Linked(
        28,
        bottom: Linked(
          35,
          bottom: Linked(40, bottom: Linked(45)),
        ),
      ),
    ),
  ),
);

Linked merge(Linked a, Linked b) {
  if (a == null) return b;
  if (b == null) return a;
  if (a.val < b.val) {
    return Linked(a.val, bottom: merge(b, a.bottom));
  } else {
    return Linked(b.val, bottom: merge(b.bottom, a));
  }
}

Linked flatten(Linked a) {
  if (a == null || a.next == null) return a;
  final t = Linked(a.val, bottom: a.bottom, next: flatten(a.next));
  return merge(t, t.next);
}
