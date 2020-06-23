import 'package:test/test.dart';
import 'package:tree/eq_array.dart';

void main() {
  test('eq arr', () {
    final r = eq_array([1, 2, 5, 4, 0], [2, 4, 5, 0, 1]);
    expect(r, true);
  });
  test('eq arr 2', () {
    final r = eq_array([1, 2, 5], [2, 4, 15]);
    expect(r, false);
  });
}
