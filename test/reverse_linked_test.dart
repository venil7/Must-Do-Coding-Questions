import 'package:test/test.dart';
import 'package:tree/reverse_linked.dart';

void main() {
  test('reverse1', () {
    final l =
        Link(1, next: Link(2, next: Link(3, next: Link(4, next: Link(5)))));
    final r = reverse(l);
    expect(r.toList(), [5, 4, 3, 2, 1]);
  });
  test('reverse2', () {
    final l =
        Link(1, next: Link(2, next: Link(3, next: Link(4, next: Link(5)))));
    final r = reverse2(l);
    expect(r.toList(), [5, 4, 3, 2, 1]);
  });
}
