import 'package:test/test.dart';
import 'package:tree/gold_mine.dart';

void main() {
  test('gold([]) - 0', () {
    final List<List<int>> field = [];
    final r = gold_mine(field);
    expect(r, 0);
  });
  test('gold([3x3]) - 12', () {
    final List<List<int>> field = [
      [1, 2, 3],
      [2, 1, 4],
      [0, 6, 4],
    ];
    final r = gold_mine(field);
    expect(r, 12);
  });
  test('gold([4x4]) - 83', () {
    final List<List<int>> field = [
      [10, 33, 13, 15],
      [22, 21, 04, 1],
      [5, 0, 2, 3],
      [0, 6, 14, 2]
    ];
    final r = gold_mine(field);
    expect(r, 83);
  });
}
