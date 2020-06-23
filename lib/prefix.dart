//+ * A B * C D

bool isOp(String s) => ("^*/+-".split("").contains(s));

class Tree {
  String op;
  Tree left;
  Tree right;
  Tree(this.op, {this.left, this.right});
  String toString() => isOp(op) ? "($left$op$right)" : op;
}

class Parser {
  int i = 0;
  String exp;
  Parser(this.exp);

  Tree parse() {
    if (i < exp.length) {
      if (isOp(exp[i])) return parseOp();
      return parseVar();
    }
    return null;
  }

  Tree parseOp() {
    if (i < exp.length) {
      final tree = Tree(exp[i]);
      i += 1;
      tree.left = parse();
      tree.right = parse();
      return tree;
    }
    return null;
  }

  Tree parseVar() {
    if (i < exp.length) {
      final tree = Tree(exp[i]);
      i += 1;
      return tree;
    }
    return null;
  }
}
