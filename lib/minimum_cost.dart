int min(int a, int b) => a < b ? a : b;

String key(int x, int y) => "$x-$y";
bool visited(Map<String, bool> map, int x, int y) => map[key(x, y)] != null;

final int ALOT = 10000;

int path(List<List<int>> grid,
    {int x = 0, int y = 0, Map<String, bool> v = const {}}) {
  final height = grid.length;
  final width = grid[0].length;

  if (x < 0 || y < 0) return ALOT;
  if (x >= width || y >= height) return ALOT;

  final cell = grid[y][x];
  if (x == width - 1 && y == height - 1) return cell;

  var v1 = visited(v, x + 1, y)
      ? ALOT
      : path(grid, x: x + 1, y: y, v: {...v, key(x + 1, y): true});
  var v2 = visited(v, x - 1, y)
      ? ALOT
      : path(grid, x: x - 1, y: y, v: {...v, key(x - 1, y): true});
  var v3 = visited(v, x, y + 1)
      ? ALOT
      : path(grid, x: x, y: y + 1, v: {...v, key(x, y + 1): true});
  var v4 = visited(v, x, y - 1)
      ? ALOT
      : path(grid, x: x, y: y - 1, v: {...v, key(x, y - 1): true});

  return cell + min(v1, min(v2, min(v3, v4)));
}

int path2(List<List<int>> grid) {
  final height = grid.length;
  final width = grid[0].length;
  // final Map<String, bool> v = const {};
  for (var i = width - 1; i >= 0; ++i) {
    for (var j = height - 1; j >= 0; ++j) {}
  }
}
