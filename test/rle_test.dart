import 'package:test/test.dart';
import 'package:tree/rle.dart';

void main() {
  test('rle', () {
    final r = rle("aaaabbbccc");
    expect(r, "a4b3c3");
  });
  test('rle2', () {
    final r = rle("abbbcdddd");
    expect(r, "a1b3c1d4");
  });
}
