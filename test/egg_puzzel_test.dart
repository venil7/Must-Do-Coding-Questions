import 'package:test/test.dart';
import 'package:tree/egg_puzzle.dart';

void main() {
  test('egg', () {
    final r = egg(2, 10);
    expect(r, 4);
  });
  test('egg', () {
    final r = egg(3, 5);
    expect(r, 3);
  });
}
