final int Function(int) tile = (int a) {
  final dp = List.generate(a + 1, (_) => 0);
  dp[0] = 0;
  dp[1] = 1;
  if (a <= 1) return a;
  for (var i = 2; i <= a; ++i) {
    dp[i] = (i % 2 == 0) ? (dp[i - 2] + 2) : dp[i - 1] + 1;
  }
  return dp[a];
};
