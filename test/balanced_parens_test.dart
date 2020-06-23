import 'package:test/test.dart';
import 'package:tree/balanced_parens.dart';

void main() {
  test('balanced 1', () {
    final r = balanced("(())");
    expect(r, true);
  });
  test('balanced 2', () {
    final r = balanced("(()()) ()");
    expect(r, true);
  });
}
