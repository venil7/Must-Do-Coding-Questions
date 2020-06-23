import 'package:test/test.dart';
import 'package:tree/stocks.dart';

void main() {
  test('best stock strategy', () {
    final r = stocks([100, 180, 260, 310, 40, 535, 695]);
    expect(r, [
      [0, 3],
      [4, 6]
    ]);
  });
  test('best stock strategy 2', () {
    final r = stocks([23, 13, 25, 29, 33, 19, 34, 45, 65, 67]);
    expect(r, [
      [1, 4],
      [5, 9]
    ]);
  });
}
