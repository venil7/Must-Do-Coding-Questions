List<List<int>> matrix = [
  [1, 2, -1, -4, -20],
  [-8, -3, 4, 2, 1],
  [3, 8, 10, 1, 3],
  [-4, -1, 1, 7, -6],
];

int sum(
  List<List<int>> matrix, {
  int wstart,
  int wfinish,
  int hstart,
  int hfinish,
}) {
  int res = 0;
  for (var i = hstart; i <= hfinish; i++) {
    for (var j = wstart; j <= wfinish; j++) {
      res += matrix[i][j];
    }
  }
  return res;
}

int max_sum(List<List<int>> matrix) {
  int max = null;
  final width = matrix[0].length;
  final height = matrix.length;
  for (int i = 0; i < height; i++) {
    for (int j = 0; j <= i; j++) {
      for (int m = 0; m < width; m++) {
        for (int n = 0; n <= m; n++) {
          final tmp = sum(
            matrix,
            hstart: j,
            hfinish: i,
            wstart: n,
            wfinish: m,
          );
          if (max == null || tmp > max) max = tmp;
        }
      }
    }
  }
  return max;
}
//O(n^4)
