import 'package:test/test.dart';
import 'package:tree/first_uniq_char.dart';

void main() {
  test('first uniq(aabb) = -1', () {
    final r = first_uniq("aabb");
    expect(r, -1);
  });
  test('first uniq(aaab) = 3', () {
    final r = first_uniq("aaab");
    expect(r, 3);
  });
}
