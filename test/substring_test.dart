import 'package:test/test.dart';
import 'package:tree/substring.dart';

void main() {
  test('sub 1', () {
    final r = find_substring("GeeksForGeeks", "Fr");
    expect(r, -1);
  });
  test('sub 2', () {
    final r = find_substring("GeeksForGeeks", "For");
    expect(r, 5);
  });
}
