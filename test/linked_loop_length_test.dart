import 'package:test/test.dart';
import 'package:tree/linked_loop_length.dart';

void main() {
  test('linked', () {
    final two = Linked(2, next: Linked(3, next: Linked(4, next: Linked(5))));
    final one = Linked(1, next: two);
    two.next.next.next.next = two;
    final r = linked_loop_length(one);
    expect(r, 4);
  });

  test('linked false', () {
    final list = Linked(2, next: Linked(3, next: Linked(4, next: Linked(5))));
    final r = linked_loop_length(list);
    expect(r, -1);
  });
}
