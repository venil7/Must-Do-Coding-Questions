import 'package:test/test.dart';
import 'package:tree/longest_snake.dart';

void main() {
  test('longest_snake(2) - 1', () {
    final field = [
      [9, 6, 5, 2],
      [8, 7, 6, 5],
      [7, 3, 1, 6],
      [1, 1, 1, 7],
    ];
    final r = longest_snake(field);
    expect(r, [9, 8, 7, 6, 5, 6, 7]);
  });
}
