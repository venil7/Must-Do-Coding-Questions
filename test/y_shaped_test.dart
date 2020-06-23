import 'package:test/test.dart';
import 'package:tree/y_shaped_lists.dart';

void main() {
  test('y shaped tails', () {
    final r = y_shaped(first, second);
    expect(r, [15, 30]);
  });
}
