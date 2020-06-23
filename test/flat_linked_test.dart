import 'package:test/test.dart';
import 'package:tree/flat_linked.dart';

void main() {
  test('flatten(list)', () {
    final r = flatten(list).toList();
    expect(r, [5, 7, 8, 10, 19, 20, 22, 28, 30, 35, 40, 45, 50]);
  });
}
