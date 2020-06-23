import 'package:test/test.dart';
import 'package:tree/goldman_sachs.dart';

void main() {
  test('reverse word', () {
    final r = reverse("hello.varja.koshka");
    expect(r, "koshka.varja.hello");
  });

  test('overlap rect 1', () {
    final r1 = Rect(Point(0, 10), Point(10, 0));
    final r2 = Rect(Point(5, 5), Point(15, 0));
    final r = overlap(r1, r2);
    expect(r, true);
  });

  test('overlap rect 2', () {
    final r1 = Rect(Point(0, 2), Point(1, 1));
    final r2 = Rect(Point(-2, -3), Point(0, 2));
    final r = overlap(r1, r2);
    expect(r, false);
  });

  test('excel 26', () {
    final r = excel(26);
    expect(r, "Z");
  });
  test('excel 52', () {
    final r = excel(52);
    expect(r, "AZ");
  });
  test('excel 80', () {
    final r = excel(80);
    expect(r, "CB");
  });
  test('excel 676', () {
    final r = excel(676);
    expect(r, "YZ");
  });
  test('excel 702', () {
    final r = excel(702);
    expect(r, "ZZ");
  });
  test('hex 705', () {
    final r = excel(705);
    expect(r, "AAC");
  });
}
