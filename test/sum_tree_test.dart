import 'package:test/test.dart';
import 'package:tree/sum_tree.dart';

final tree = Tree(
  26,
  left: Tree(
    10,
    left: Tree(4),
    right: Tree(6),
  ),
  right: Tree(
    3,
    left: Tree(1),
    right: Tree(2),
  ),
);

void main() {
  test('sumtree', () {
    final r = check_tree(tree);
    expect(r, true);
  });
}
