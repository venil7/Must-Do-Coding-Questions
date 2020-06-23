import 'package:test/test.dart';
import 'package:tree/queue_stack.dart';

void main() {
  test('queue stack ', () {
    final queue = Queue()..enqueueMany([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);
    final lst = queue.dequeueMany();
    expect(lst, [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);
  });
}
