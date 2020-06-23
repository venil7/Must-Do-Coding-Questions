import 'dart:math';

int prod1(List<int> a, {int i = 0, j = 1, k = 2}) {
  if (i >= a.length || j >= a.length || k >= a.length) return -1;
  if (i == j || i == k || j == k) return -1;
  final c = a[i] * a[j] * a[k];
  final v1 = max(c, prod1(a, i: i, j: j, k: k + 1));
  final v2 = max(c, prod1(a, i: i, j: j + 1, k: k + 1));
  final v3 = max(c, prod1(a, i: i + 1, j: j + 1, k: k + 1));
  return max(max(v1, v2), v3);
}

int prod2(List<int> a) {
  int max = -1;
  for (var i = 0; i < a.length; i += 1) {
    for (var j = 0; j < a.length; j += 1) {
      for (var k = 0; k < a.length; k += 1) {
        if (i == j || i == k || j == k) break;
        final c = a[i] * a[j] * a[k];
        if (c > max) max = c;
      }
    }
  }
  return max;
}

final prod = prod2;
