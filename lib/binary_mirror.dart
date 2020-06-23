import 'package:tree/prefix.dart';

class Tree {
  Tree(this.val, {this.left, this.right});
  Tree left;
  Tree right;
  int val;

  static String _toString(Tree t) {
    return t == null
        ? "-"
        : "${t.val}->L${t.left.toString()},->R${t.right.toString()}";
  }

  String toString() {
    return Tree._toString(this);
  }
}

Tree mirror(Tree tree) {
  if (tree == null) return null;
  return Tree(
    tree.val,
    left: mirror(tree.right),
    right: mirror(tree.left),
  );
}
