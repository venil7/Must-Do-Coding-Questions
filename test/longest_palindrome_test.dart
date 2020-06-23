import 'package:test/test.dart';
import 'package:tree/longest_palindrome.dart';

void main() {
  test('balanced tree 1', () {
    final r = longest_palindrome("aaaabbaa");
    expect(r, "aabbaa");
  });
}
