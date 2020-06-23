import 'package:test/test.dart';
import 'package:tree/infix_postfix.dart';

void main() {
  // test('infix to postfix', () {
  //   final r = toPost("a+b+(c+d)");
  //   expect(r, "abc+-");
  // });

  // test('infix to postfix with parens', () {
  //   final r = Tree.fromString("a+b*(c^d-e)^(f+g*h)-i").postfix();
  //   expect(r, "abcd^e-fgh*+^*+i-");
  // });

  // test('infix to postfix with parens', () {
  //   final r = toPost("a+b*(c^d-e)^(f+g*h)-i");
  //   expect(r, "abcd^e-fgh*+^*+i-");
  // });

  test('infix to postfix', () {
    final r = toPost("a+b+c");
    expect(r, "ab+c+");
  });

  test('infix to postfix 2', () {
    final r = toPostfix2("a+b+c");
    expect(r, "ab+c+");
  });
}
