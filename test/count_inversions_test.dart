import 'package:test/test.dart';
import 'package:tree/count_inversions.dart';

void main() {
  test('count inv(8, 4, 2, 1)', () {
    final r = inversions([8, 4, 2, 1]);
    expect(r, 6);
  });
  test('count inv(3, 1, 2)', () {
    final r = inversions([3, 1, 2]);
    expect(r, 2);
  });
}
