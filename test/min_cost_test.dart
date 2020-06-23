import 'package:test/test.dart';
import 'package:tree/minimum_cost.dart';

final matrix = [
  [031, 100, 065, 012, 018],
  [010, 013, 047, 157, 006],
  [100, 113, 174, 011, 033],
  [088, 124, 041, 020, 140],
  [099, 032, 111, 041, 020],
];

void main() {
  test('min path', () {
    final r = path(matrix);
    expect(r, 327);
  });
}
