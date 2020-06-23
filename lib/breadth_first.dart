class Tree {
  final int val;
  Tree left;
  Tree right;
  Tree(this.val, {this.left, this.right});
  toString() => "{$val}";
}

final tree = Tree(
  1,
  left: Tree(2, left: Tree(4), right: Tree(5)),
  right: Tree(3, left: Tree(6), right: Tree(7)),
);

List<int> breadth(Tree tree) {
  if (tree == null) return [];
  final List<Tree> queue = [tree];
  final List<int> res = [];
  while (queue.length > 0) {
    var t = queue.removeAt(0);
    res.add(t.val);
    if (t.left != null) queue.add(t.left);
    if (t.right != null) queue.add(t.right);
  }
  return res;
}

Tree toTree(List<int> lst) {
  if (lst.length == 0) return null;
  Tree top = Tree(lst.removeAt(0));
  List<Tree> queue = [top];
  while (queue.length > 0 && lst.length > 0) {
    var tree = queue.removeAt(0);
    tree.left = Tree(lst.removeAt(0));
    queue.add(tree.left);
    if (lst.length == 0) break;
    tree.right = Tree(lst.removeAt(0));
    queue.add(tree.right);
  }
  return top;
}
