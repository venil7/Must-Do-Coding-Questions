int inversions(List<int> a) {
  var inv = 0;
  for (var j = 0; j < a.length; j += 1) {
    for (var i = 0; i < j; i += 1) {
      if (i < j && a[i] > a[j]) inv += 1;
    }
  }
  return inv;
}
