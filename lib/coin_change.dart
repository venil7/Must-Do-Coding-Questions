import 'dart:core';

int coin_change_recursive(int amnt, List<int> denom,
    {List<int> current = const []}) {
  final total = current.fold(0, (i, j) => i + j);
  if (total == amnt) {
    print(current);
    return 1;
  }
  if (total > amnt) return 0;

  return denom
      .map((d) =>
          coin_change_recursive(amnt, denom, current: current.toList()..add(d)))
      .reduce((i, j) => i + j);
}

final coin_change = coin_change_recursive;
