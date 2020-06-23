import 'dart:math';

int coin_game_rec(List<int> coins) {
  int f(int i, int j) {
    if (j - i == 1) return max(coins[i], coins[j]);

    return max(
      coins[i] + min(f(i + 2, j), f(i + 1, j - 1)),
      coins[j] + min(f(i + 1, j - 1), f(i, j - 2)),
    );
  }

  return f(0, coins.length - 1);
}
