import 'package:test/test.dart';
import 'package:tree/find_alphabet.dart';

void main() {
  test('find alpha', () {
    final r = words("baa", "abcd");
    expect(r, ['b', 'd', 'a', 'c']);
  });
}
