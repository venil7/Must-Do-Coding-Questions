import 'package:test/test.dart';
import 'package:tree/postfix_to_infix.dart';

void main() {
  test('post --> iinf', () {
    final r = toInfix("ab+c+");
    expect(r, "((a+b)+c)");
  });

  test('post --> iinf 2', () {
    final r = toInfix("42+351-*+");
    expect(r, "((4+2)+(3*(5-1)))");
  });
}
