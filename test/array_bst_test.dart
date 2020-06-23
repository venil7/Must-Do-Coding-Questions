import 'package:test/test.dart';
import 'package:tree/array_bst.dart';

void main() {
  test('array_bst', () {
    final r = to_bst([1, 2, 3, 4, 5, 6, 7]);
    expect(r.toList(), [4, 2, 1, 3, 6, 5, 7]);
  });
  test('bst kth (6)', () {
    Bst bst = to_bst([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);
    final r = k_th(bst, 6);
    expect(r, 5);
  });
  test('bst2 kth (6)', () {
    Bst bst = to_bst([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);
    final r = toList2(bst, 6).last;
    expect(r, 5);
  });
  test('bst3 kth (6)', () {
    Bst bst = to_bst([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);
    final r = kth3(bst, 6);
    expect(r, 5);
  });
}
