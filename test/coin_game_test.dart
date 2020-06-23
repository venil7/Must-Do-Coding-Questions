import 'package:test/test.dart';
import 'package:tree/coin_game.dart';

void main() {
  test('game(5, 3, 7, 10)', () {
    final r = coin_game_rec([5, 3, 7, 10]);
    expect(r, 15);
  });

  test('game(8, 15, 3, 7)', () {
    final r = coin_game_rec([8, 15, 3, 7]);
    expect(r, 22);
  });
}
