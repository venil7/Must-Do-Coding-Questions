enum Token {
  Var,
  Op,
}

class Tree {
  final Token token;
  final String val;
  final Tree left;
  final Tree right;
  Tree(this.token, this.val, {this.left, this.right});
  postfix() => "${left?.postfix() ?? ""}${right?.postfix() ?? ""}${val}";
  static Tree fromString(String s) => parse(tokenize(s));
  String toString() => val;
}

Tree charToToken(String s) {
  if ("^*/+-".split("").contains(s)) return Tree(Token.Op, s);
  return Tree(Token.Var, s);
}

List<Tree> tokenize(String s) => s.split("").map(charToToken).toList();

List<List<Tree>> extract_parens(List<Tree> tokens) {
  if (tokens.first.val != "(") return [tokens, []];
  int i = 1;
  int p = tokens.first.val == "(" ? 1 : 0;
  while (p != 0 && i < tokens.length) {
    if (tokens[i].val == "(") p += 1;
    if (tokens[i].val == ")") p -= 1;
    i += 1;
  }

  return [tokens.skip(1).take(i - 2).toList(), tokens.skip(i).toList()];
}

Tree parse(List<Tree> tokens) {
  if (tokens.length == 0) return null;
  if (tokens.length == 1) return tokens.first;
  if (tokens.first.val == ")") return parse(tokens.skip(1).toList());
  if (tokens.first.val == "(") {
    final parts = extract_parens(tokens);
    final parenthesis = parts.first;
    final remainder = parts.skip(1).first;
    final left = parse(parenthesis);
    return remainder.length > 0
        ? Tree(
            remainder.first.token,
            remainder.first.val,
            left: left,
            right: parse(remainder.skip(1).toList()),
          )
        : left;
  }

  final left = tokens.first;

  return Tree(
    tokens.skip(1).first.token,
    tokens.skip(1).first.val,
    left: left,
    right: parse(tokens.skip(2).toList()),
  );
}

//--------------
int prec(String c) {
  switch (c) {
    case '^':
      return 3;
    case '*':
    case '/':
      return 2;
    case '+':
    case '-':
      return 1;
    default:
      return 0;
  }
}

bool op(String s) => ("^*/+-".split("").contains(s));

String toPost(String infix) {
  List<String> result = [];
  List<String> stack = [];
  for (var s in infix.split("")) {
    if (s == "(") {
      stack.add(s);
      continue;
    }
    if (s == ")") {
      while (stack.length != 0 && stack.last != '(') {
        result.add(stack.removeLast());
      }
      if (stack.length != 0 && stack.last != '(')
        throw Error();
      else
        stack.removeLast();
      continue;
    }
    if (op(s)) {
      while (stack.length != 0 && prec(s) <= prec(stack.last)) {
        if (stack.last == '(') throw Error();
        result.add(stack.removeLast());
      }
      stack.add(s);
      continue;
    }
    result.add(s);
  }

  while (stack.length != 0) {
    if (stack.last == '(') throw Error();
    result.add(stack.removeLast());
  }

  return result.join("");
}

String toPostfix2(String infix) {
  List<String> result = [];
  List<String> stack = [];
  for (var s in infix.split("")) {
    if (op(s)) {
      stack.add(s);
      continue;
    }
    result.add(s);
    while (stack.length > 0) {
      result.add(stack.removeLast());
    }
  }
  return result.join();
}

// a+b
// a+(b+c) --> a
