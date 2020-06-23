import 'package:test/test.dart';
import 'package:tree/boolean_matrix.dart';

void main() {
  test('level traversal', () {
    final mat = [
      [true, false, false],
      [true, false, false],
      [true, false, false],
      [false, false, false],
    ];
    final r = matrix(mat);
    expect(r, [
      [true, true, true],
      [true, true, true],
      [true, true, true],
      [true, false, false],
    ]);
  });
}
