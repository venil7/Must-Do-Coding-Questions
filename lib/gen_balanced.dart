List<String> gen_balanced_1(
  int numPairs, {
  String s = "",
  int numOpen = 0,
  int numClosed = 0,
}) {
  if (s.length >= numPairs * 2) return [s];
  final List<String> left = (numOpen < numPairs)
      ? gen_balanced_1(numPairs,
          s: "$s(", numOpen: numOpen + 1, numClosed: numClosed)
      : [];

  final List<String> right = (numOpen > numClosed)
      ? gen_balanced_1(numPairs,
          s: "$s)", numOpen: numOpen, numClosed: numClosed + 1)
      : [];

  return [...left, ...right];
}

List<String> gen_balanced_2(
  int numPairs, {
  String s = "",
}) {
  if (s.length >= numPairs * 2) return [s];
  return [
    ...gen_balanced_2(numPairs, s: "($s)"),
    ...gen_balanced_2(numPairs, s: "()$s"),
    ...gen_balanced_2(numPairs, s: "$s()")
  ].toSet().toList();
}

final gen_balanced = gen_balanced_2;
