bool balanced_parens(String s) {
  final arr = s.split("").where((ch) => ch == "(" || ch == ")").toList();
  if (arr.length == 0) return true;
  if (arr.length % 2 != 0) return false;
  int depth = 0;
  for (int i = 0; i < arr.length; i++) {
    if (depth < 0) return false;
    if (arr[i] == "(") {
      depth += 1;
      continue;
    }
    if (arr[i] == ")") {
      depth -= 1;
      continue;
    }
  }
  return depth == 0;
}

final balanced = balanced_parens;
