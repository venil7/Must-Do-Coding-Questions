List<List<int>> best(List<List<int>> s1, List<List<int>> s2, List<int> prices) {
  final sum1 =
      s1.fold(0, (acc, pair) => acc + prices[pair[1]] - prices[pair[0]]);
  final sum2 =
      s2.fold(0, (acc, pair) => acc + prices[pair[1]] - prices[pair[0]]);
  return sum1 > sum2 ? s1 : s2;
}

List<List<int>> stocks(List<int> prices, {int i = 0, int j = 0}) {
  if (i >= prices.length || j >= prices.length) return [];
  if (i == j) return stocks(prices, i: i, j: j + 1);
  final s1 = [
    [i, j],
    ...stocks(prices, i: j + 1, j: j + 1)
  ];
  final s2 = stocks(prices, i: i, j: j + 1);
  final s3 = stocks(prices, i: i + 1, j: j + 1);

  return best(s1, best(s2, s3, prices), prices);
}
