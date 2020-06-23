import 'package:test/test.dart';
import 'package:tree/coin_change.dart';

void main() {
  test('change(4, [1,2,3])', () {
    final r = coin_change(4, [1, 2, 3]);
    expect(r, 4);
  });
}
