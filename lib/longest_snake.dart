// https://www.geeksforgeeks.org/find-maximum-length-snake-sequence/
List<int> longest_snake_rec(List<List<int>> field) {
  List<int> __longest_snake_rec(List<List<int>> field, {int y = 0, int x = 0}) {
    final width = field[0].length;
    final height = field.length;
    // if (x >= width || y >= height) return [];
    final right = (x + 1 < width)
        ? (((field[y][x] - field[y][x + 1]).abs() == 1)
            ? [field[y][x], ...__longest_snake_rec(field, x: x + 1, y: y)]
            : __longest_snake_rec(field, x: x + 1, y: y))
        : [field[y][x]];
    final down = (y + 1 < height)
        ? (((field[y][x] - field[y + 1][x]).abs() == 1)
            ? [field[y][x], ...__longest_snake_rec(field, x: x, y: y + 1)]
            : __longest_snake_rec(field, x: x, y: y + 1))
        : [field[y][x]];

    return right.length > down.length ? right : down;
  }

  return __longest_snake_rec(field);
}

List<int> longest_snake_dp(List<List<int>> field) {
  final width = field[0].length;
  final height = field.length;
  var longest_path = <int>[];
  final List<List<List<int>>> dp =
      List.generate(height, (y) => List.generate(width, (x) => <int>[]));
  dp[0][0] = [field[0][0]];
  for (var y = 0; y < height; y++) {
    for (var x = 0; x < width; x++) {
      if (x == 0 && y == 0) continue;
      final top = y > 0 && (dp[y - 1][x].last - field[y][x]).abs() == 1
          ? dp[y - 1][x]
          : <int>[];
      final left = x > 0 && (dp[y][x - 1].last - field[y][x]).abs() == 1
          ? dp[y][x - 1]
          : <int>[];
      dp[y][x] = (top.length > left.length)
          ? [...top, field[y][x]]
          : [...left, field[y][x]];
      if (dp[y][x].length > longest_path.length) longest_path = dp[y][x];
    }
  }

  return longest_path;
}

// final longest_snake = longest_snake_rec;
final longest_snake = longest_snake_dp;
