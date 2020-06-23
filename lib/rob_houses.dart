import 'dart:math';

List<T> after<T>(List<T> lst, int idx) =>
    idx >= lst.length ? [] : lst.sublist(idx + 1);

int rob_recursive(List<int> houses) {
  if (houses.length == 0) return 0;

  final sums = houses.asMap().entries.map((entry) {
    return entry.value + rob_recursive(after(houses, entry.key + 1));
  });

  return sums.fold(0, max);
}

int rob_top_down(List<int> houses) {
  int _rob(int house) {
    if (house < 0) return 0;
    return max(houses[house] + _rob(house - 2), _rob(house - 1));
  }

  return _rob(houses.length - 1);
}

int rob_top_down_memoized(List<int> houses) {
  final cache = <int, int>{};
  int _rob(int house) {
    if (cache.containsKey(house)) return cache[house];
    if (house < 0) return 0;
    cache[house] = max(houses[house] + _rob(house - 2), _rob(house - 1));
    return cache[house];
  }

  return _rob(houses.length - 1);
}

int rob_bottom_up_memoized(List<int> houses) {
  if (houses.length == 0) return 0;
  final cache = <int, int>{};
  cache[0] = 0;
  cache[1] = houses[0];
  for (int i = 1; i < houses.length; i++) {
    int val = houses[i];
    cache[i + 1] = max(cache[i], cache[i - 1] + val);
  }
  return cache[houses.length];
}

// final rob = rob_recursive;
// final rob = rob_top_down;
// final rob = rob_top_down_memoized;
final rob = rob_bottom_up_memoized;
