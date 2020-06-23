List<int> insert(List<int> lst, int item) {
  if (lst.length == 0) return [item];
  final first = lst.first;
  if (item < first) return [item, ...lst];
  return [first, ...insert(lst.skip(1).toList(), item)];
}

List<int> insert_sort(List<int> items, {List<int> acc = const []}) {
  if (items.length == 0) return acc;
  final first = items.first;
  return insert_sort(items.skip(1).toList(), acc: insert(acc, first));
}
