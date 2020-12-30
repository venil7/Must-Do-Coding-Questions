import 'package:test/test.dart';
import 'package:tree/heap.dart';

main() {
  final unsorted = [2, 17, 79, 19, 100, 7, 3, 26, 36, 1];
  test('Test Children index', () {
    var idx0 = 0;
    expect(Heap.leftChildIndex(idx0), 1);
    expect(Heap.rightChildIndex(idx0), 2);
  });
  test('Test parent/children index', () {
    var idx0 = 666;
    var left = Heap.leftChildIndex(idx0);
    var right = Heap.rightChildIndex(idx0);

    expect(Heap.parentIndex(left), idx0);
    expect(Heap.parentIndex(right), idx0);
  });
  test('Test max heap top', () {
    final heap = Heap<int>(cmp: (a, b) => a - b);
    heap.addMany(unsorted);

    expect(heap.top, 100);
  });

  test('Test min heap top', () {
    final heap = Heap<int>(cmp: (a, b) => b - a);
    heap.addMany(unsorted);

    expect(heap.top, 1);
  });

  test('Test min heap pop', () {
    final heap = Heap<int>(cmp: (a, b) => b - a);
    heap.addMany(unsorted);
    heap.pop();
    expect(heap.top, 2);
  });

  test('Test min heap sort', () {
    final heap = Heap<int>(cmp: (a, b) => b - a);
    heap.addMany(unsorted);

    final res = List<int>();
    while (!heap.empty) res.add(heap.pop());

    expect(res, [1, 2, 3, 7, 17, 19, 26, 36, 79, 100]);
  });

  test('Test max heap sort', () {
    final heap = Heap<int>(cmp: (a, b) => a - b);
    heap.addMany(unsorted);

    final res = List<int>();
    while (!heap.empty) res.add(heap.pop());

    expect(res, [100, 79, 36, 26, 19, 17, 7, 3, 2, 1]);
  });
}
