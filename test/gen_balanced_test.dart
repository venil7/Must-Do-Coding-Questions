import 'package:test/test.dart';
import 'package:tree/gen_balanced.dart';

void main() {
  test('gen 2 airs', () {
    final r = gen_balanced(2);
    expect(r, ["(())", "()()"]);
  });

  test('gen 3 pairs', () {
    final r = gen_balanced(3);
    expect(
        r..sort(), ["((()))", "(()())", "()()()", "(())()", "()(())"]..sort());
  });
}
