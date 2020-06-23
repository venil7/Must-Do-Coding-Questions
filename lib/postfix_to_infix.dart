bool op(String s) => ("^*/+-".split("").contains(s));

String toInfix(String postfix) {
  List<String> stack = [];
  for (var s in postfix.split("")) {
    if (op(s)) {
      final second = stack.removeLast();
      final first = stack.removeLast();
      stack.add(["(", first, s, second, ")"].join());
      continue;
    }
    stack.add(s);
  }
  return stack.removeLast();
}
// ab+c+
