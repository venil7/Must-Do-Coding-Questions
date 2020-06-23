import 'package:test/test.dart';
import 'package:tree/sort_stack.dart';

void main() {
  test('stack sort ', () {
    final r = sort_stack(stack)?.toList();
    expect(r, [9, 7, 5, 3, 1]);
  });
}
