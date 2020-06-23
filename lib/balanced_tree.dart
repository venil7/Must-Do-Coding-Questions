import 'dart:math';

class Tree {
  Tree(this.val, {this.left, this.right});
  final int val;
  final Tree left;
  final Tree right;
}

final tree1 = Tree(
  1,
  left: Tree(10, left: Tree(5)),
  right: Tree(39),
);

final tree2 = Tree(1, left: Tree(10, left: Tree(5)));

int height(Tree tree) {
  if (tree == null) return 0;
  if (tree.left == null && tree.right == null) return 1;
  return 1 + max(height(tree.left), height(tree.right));
}

bool balanced(Tree tree) {
  return height(tree.left) - height(tree.right) <= 1;
}
