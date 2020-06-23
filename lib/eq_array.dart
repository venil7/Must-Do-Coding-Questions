bool eq_array(List<int> l1, List<int> l2) {
  List<int> find1(int i, List<int> l) {
    final found = l.indexOf(i);
    if (found != -1) {
      return l..removeAt(found);
    }
    return l;
  }

  if (l1.length != l2.length) return false;
  if (l1.length == 0) return true;
  if (l1[0] == l2[0])
    return eq_array(
      l1.skip(1).toList(),
      l2.skip(1).toList(),
    );
  final remaining = find1(l1[0], l2);
  return eq_array(l1.skip(1).toList(), remaining);
}
