import 'dart:math';

int max_index1(List<int> a) {
  var res = -1;
  for (var i = 0; i < a.length; ++i) {
    for (var j = a.length - 1; j > i; --j) {
      if (a[i] <= a[j]) {
        res = max(res, j - i);
      }
    }
  }

  return res;
}

class Idx {
  Idx(this.index, this.val);
  int index;
  int val;
}

int max_index2(List<int> a) {
  final l = List.generate(a.length, (index) => Idx(index, a[index]))
    ..sort((i1, i2) => i1.val - i2.val);

  var i = 0;
  var j = l.length - 1;
  while (i < j) {}
}
