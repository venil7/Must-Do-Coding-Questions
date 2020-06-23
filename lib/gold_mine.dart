import 'dart:math';

int gold_mine_recursive(List<List<int>> field,
    {int x = 0, int y = 0, init = false}) {
  if (init) {
    return List.generate(
            field.length, (yy) => gold_mine_recursive(field, x: 0, y: yy))
        .fold(0, max);
  }
  if (x < 0 || x >= field[0].length) return 0;
  if (y < 0 || y >= field.length) return 0;
  final up = field[y][x] + gold_mine_recursive(field, x: x + 1, y: y - 1);
  final fw = field[y][x] + gold_mine_recursive(field, x: x + 1, y: y);
  final dw = field[y][x] + gold_mine_recursive(field, x: x + 1, y: y + 1);
  return max(up, max(fw, dw));
}

int gold_mine_topdown(List<List<int>> field) {
  if (field.length == 0 || field[0].length == 0) return 0;
  final _field = List.generate(
    field.length,
    (row) => List.generate(field[0].length, (_) => 0),
  );

  final cols = field[0].length - 1;
  final rows = field.length - 1;

  for (var col = field[0].length - 1; col >= 0; --col) {
    for (var row = 0; row < field.length; ++row) {
      _field[row][col] = field[row][col] +
          max(
            col + 1 > cols || row + 1 > rows ? 0 : _field[row + 1][col + 1],
            max(
              col + 1 > cols ? 0 : _field[row][col + 1],
              col + 1 > cols || row - 1 < 0 ? 0 : _field[row - 1][col + 1],
            ),
          );
    }
  }
  return _field.map((lst) => lst.first).fold(0, max);
}

// int gold_mine(List<List<int>> field) => gold_mine_recursive(
//       field,
//       init: true,
//     );

final gold_mine = gold_mine_topdown;
