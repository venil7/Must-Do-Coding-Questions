List<int> insertAt(int index, int element, List<int> list) {
  return [...list]..insert(index, element);
}

List<int> swap(int a, int b, List<int> list) {
  final valA = list[a];
  final valB = list[b];
  return [...list]
    ..[a] = valB
    ..[b] = valA;
}

List<List<int>> permutations(List<int> list, {int start = 0}) {
  final end = list.length - 1;
  if (start == end) return [list];
  List<List<int>> result = [];
  for (var i = start; i <= end; i++) {
    result.addAll(permutations(swap(i, start, list), start: start + 1));
  }

  return result;
}
