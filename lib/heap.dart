class Heap<T extends num> {
  final int Function(T, T) cmp;
  List<T> _list;
  Heap({this.cmp}) : _list = List();

  int get length => _list.length;
  int get lastIdx => length - 1;
  T get top => _list[0];
  bool get empty => _list.isEmpty;

  static int leftChildIndex(int idx) => idx * 2 + 1; //odd, left

  static int rightChildIndex(int idx) => leftChildIndex(idx) + 1; //even, right

  static int parentIndex(int idx) {
    if (idx <= 0) return 0;
    return (idx - (idx % 2 == 0 ? 2 : 1)) ~/ 2;
  }

  void swap(int idx1, int idx2) {
    final temp = _list[idx2];
    _list[idx2] = _list[idx1];
    _list[idx1] = temp;
  }

  void heapUp(int idx) {
    if (idx == 0) return;
    final pIdx = parentIndex(idx);
    if (cmp(_list[idx], _list[pIdx]) < 0) return;
    swap(idx, pIdx);
    heapUp(pIdx);
  }

  void heapDown(int idx) {
    if (idx >= lastIdx) return;
    //left child
    final lIdx = leftChildIndex(idx);
    if (lIdx > lastIdx) return;
    if (cmp(_list[idx], _list[lIdx]) < 0) {
      swap(idx, lIdx);
      heapDown(lIdx);
    }
    //right child
    final rIdx = rightChildIndex(idx);
    if (rIdx > lastIdx) return;
    if (cmp(_list[idx], _list[rIdx]) < 0) {
      swap(idx, rIdx);
      heapDown(rIdx);
    }
  }

  T pop() {
    final first = top;
    swap(0, lastIdx);
    _list.removeLast();
    if (!empty) {
      heapDown(0);
    }

    return first;
  }

  void add(T val) {
    _list.add(val);
    heapUp(lastIdx);
  }

  void addMany(Iterable<T> vals) {
    for (final v in vals) {
      add(v);
    }
  }
}
