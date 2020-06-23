import 'package:test/test.dart';
import 'package:tree/insert_sort.dart';

void main() {
  test('insert test', () {
    final r = insert_sort([0, 1, 9, 2, 8, 3, 7, 4, 6, 5]);
    expect(r, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);
  });
}
