import 'package:test/test.dart';
import 'package:tree/balanced_tree.dart';

void main() {
  test('balanced tree 1', () {
    final r = balanced(tree1);
    expect(r, true);
  });
  test('balanced tree 2', () {
    final r = balanced(tree2);
    expect(r, false);
  });
  test('height ', () {
    final r = height(tree2);
    expect(r, 3);
  });
}
