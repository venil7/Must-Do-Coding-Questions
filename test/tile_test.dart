import 'package:test/test.dart';
import 'package:tree/tile.dart';

void main() {
  test('tile(2x2, 2)', () {
    final r = tile(2);
    expect(r, 2);
  });
  test('tile(2x4, 5)', () {
    final r = tile(4);
    expect(r, 5);
  });
}
