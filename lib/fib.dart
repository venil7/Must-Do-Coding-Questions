int fib_recursive(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  return fib(n - 1) + fib(n - 2);
}

int fib_recursive_memoized(int n) {
  final cache = <int, int>{0: 0, 1: 1};
  if (cache.containsKey(n)) return cache[n];
  cache[n] = fib(n - 1) + fib(n - 2);
  return cache[n];
}

int fib_linear_memoized(int n) {
  final cache = <int, int>{0: 0, 1: 1};
  if (cache.containsKey(n)) return cache[n];

  for (var i = 2; i <= n; ++i) {
    cache[i] = cache[i - 1] + cache[i - 2];
  }

  return cache[n];
}

int fib_linear(int n) {
  if (n == 0) return 0;
  if (n == 1 || n == 2) return 1;
  var prev1 = 0;
  var prev2 = 1;
  var current = prev1 + prev2;

  for (var i = 3; i <= n; ++i) {
    prev1 = prev2;
    prev2 = current;
    current = prev1 + prev2;
  }

  return current;
}

// final fib = fib_recursive;
// final fib = fib_recursive_memoized;
// final fib = fib_linear_memoized;
final fib = fib_linear;
