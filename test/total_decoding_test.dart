import 'package:test/test.dart';
import 'package:tree/total_decoding_mess.dart';

void main() {
  test('decode(123)', () {
    final r = decoding("123");
    expect(r, 3);
  });
  test('decode(2563)', () {
    final r = decoding("2563");
    expect(r, 2);
  });
}
