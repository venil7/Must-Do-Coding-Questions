import 'package:test/test.dart';
import 'package:tree/max_index.dart';

void main() {
  test('max ind', () {
    final r = max_index1([34, 8, 10, 3, 2, 80, 30, 33, 1]);
    expect(r, 6);
  });
}
