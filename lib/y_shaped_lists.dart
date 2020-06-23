class Linked {
  Linked(this.val, {this.tail});
  final Linked tail;
  final int val;
}

final remainder = Linked(15, tail: Linked(30));
final first = Linked(3, tail: Linked(6, tail: Linked(9, tail: remainder)));
final second = Linked(10, tail: remainder);

List<int> y_shaped(
  Linked l1,
  Linked l2,
) {
  if (l1 == null || l2 == null) return [];
  final v1 = (l1 == l2) ? [l1.val, ...y_shaped(l1.tail, l2.tail)] : [];
  final v2 = y_shaped(l1.tail, l2);
  final v3 = y_shaped(l1, l2.tail);

  final longer = (List a, List b) => a.length > b.length ? a : b;

  return longer(v1, longer(v2, v3));
}

List<int> y_shaped2(
  Linked l1,
  Linked l2,
) {
  var result = [];
  while (l1.tail != 0 && l2.tail != null) {
    if (l1.val == l2.val) {
      result.add(l1.val);
      l1 = l1.tail;
      l2 = l2.tail;
    } else {
      result = [];
    }
  }
  return result;
}
