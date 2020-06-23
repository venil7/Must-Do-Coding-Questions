class Tree {
  Tree(this.val, {this.left, this.right});
  final int val;
  final Tree left;
  final Tree right;
  bool get terminal => left == null && right == null;
}

int sum(Tree tree, {skip = true}) {
  if (tree == null) return 0;
  if (tree.terminal) return tree.val;
  return (skip ? 0 : tree.val) +
      sum(tree.left, skip: false) +
      sum(tree.right, skip: false);
}

bool check_tree(Tree tree) => sum(tree) == tree.val;
