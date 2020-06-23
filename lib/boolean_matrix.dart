List<List<bool>> matrix(List<List<bool>> a) {
  var _x = {};
  var _y = {};
  final height = a.length;
  final width = a[0].length;
  for (var i = 0; i < height; i++) {
    for (var j = 0; j < width; j++) {
      if (a[i][j]) {
        _y[i] = true;
        _x[j] = true;
      }
    }
  }
  final row = List.filled(width, true);

  return List.generate(
    height,
    (i) => (_y[i] == true) ? row : List.generate(width, (j) => _x[j] ?? false),
  );
}
