class Bst {
  int val;
  Bst left;
  Bst right;
  Bst(this.val, {this.left, this.right});
  toList() => [
        this.val,
        ...left?.toList() ?? [],
        ...right?.toList() ?? [],
      ];
}

Bst to_bst(List<int> list) {
  if (list.length == 0) return null;
  if (list.length == 1) return Bst(list.first);
  final midpoint = (list.length / 2).floor();
  return Bst(
    list[midpoint],
    left: to_bst(list.take(midpoint).toList()),
    right: to_bst(list.skip(midpoint + 1).toList()),
  );
}

int k_th(Bst bst, int k) {
  final l = toList(bst);
  return l.skip(k - 1).first;
}

List<int> toList(Bst bst) {
  if (bst == null) return [];
  return [...toList(bst.left), bst.val, ...toList(bst.right)];
}

Iterable<int> toList2(Bst bst, int k) {
  if (bst == null) return [];
  return [...toList2(bst.left, k), bst.val, ...toList2(bst.right, k)].take(k);
}

void toList3(Bst bst, List<int> lst, int k) {
  if (bst == null) return;
  toList3(bst.left, lst, k);
  lst[0] += 1;
  if (lst[0] == k) {
    lst[1] = bst.val;
    return;
  }
  toList3(bst.right, lst, k);
}

int kth3(Bst bst, int k) {
  List<int> l = [0, 0];
  toList3(bst, l, k);
  return l[1];
}
