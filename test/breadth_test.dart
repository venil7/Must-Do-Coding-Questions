import 'package:test/test.dart';
import 'package:tree/breadth_first.dart';

void main() {
  test('level traversal', () {
    final r = breadth(tree);
    expect(r, [1, 2, 3, 4, 5, 6, 7]);
  });

  test('to tree and back', () {
    final t = toTree([1, 2, 3, 4, 5, 6, 7]);
    final r = breadth(t);
    expect(r, [1, 2, 3, 4, 5, 6, 7]);
  });
}
