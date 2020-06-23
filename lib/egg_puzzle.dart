import 'dart:math';

int egg(int eggs, int floors) {
  if (floors <= 1) return floors;
  if (eggs == 1) return floors;
  final floors_to_try = List.generate(floors - 1, (f) => f + 1);
  final res = floors_to_try
      .map((f) => max(egg(eggs - 1, f - 1), egg(eggs, floors - f)))
      .reduce(min);

  return 1 + res;
}
