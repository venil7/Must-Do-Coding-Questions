import 'package:test/test.dart';
import 'package:tree/count_set_bits.dart';

void main() {
  test('bin(8)', () {
    final r = bin(8);
    expect(r, "1000");
  });
  test('bin(11)', () {
    final r = bin(11);
    expect(r, "1011");
  });
  test('numbits(6)', () {
    final r = numbits(6);
    expect(r, 2);
  });
  test('numbits(13)', () {
    final r = numbits(13);
    expect(r, 3);
  });
}
