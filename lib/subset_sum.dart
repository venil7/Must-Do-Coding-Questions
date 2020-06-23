int Function(int, int) _sum = (int x, int y) => x + y;

List<int> subset_sum_recursive(List<int> numbers, int sum) {
  final _numbers = numbers.where((n) => n <= sum).toList();
  if ((_numbers.length == 0) || (sum == 0)) return [];

  List<int> ways = null;
  for (var n in _numbers) {
    if (n == sum) return [n];
    final res = [
      n,
      ...subset_sum(
        _numbers.where((x) => x != n).toList(),
        sum - n,
      )
    ];
    if ((res.fold(0, _sum) == sum) &&
        (ways == null || ways.length > res.length)) {
      ways = (res);
    }
  }

  return ways;
}

List<int> subset_sum_recursive2(List<int> numbers, int sum) {
  if (sum == 0) return [];
  final _numbers = numbers.where((n) => n <= sum).toList();
  if (_numbers.length == 0) return null;
  final first = _numbers.first;
  final rest = _numbers.skip(1).toList();

  final sub = subset_sum_recursive2(rest, sum - first);
  final s1 = sub != null ? [first, ...sub] : null;
  final s2 = subset_sum_recursive2(rest, sum);
  if (s1 != null && s2 != null) {
    return s1.length < s2.length ? s1 : s2;
  }
  return s1 ?? s2;
}

List<int> subset_sum_dp(List<int> numbers, int sum) {
  final dp = List.filled(numbers.length, () => List.filled(sum, () => 0));
  for (var index = 1; index < numbers.length; ++index) {
    for (var s = 1; s <= sum; ++s) {}
  }
}

// final subset_sum = subset_sum_recursive;
final subset_sum = subset_sum_dp;
