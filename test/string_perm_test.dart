import 'package:test/test.dart';
import 'package:tree/string_permutations.dart';

void main() {
  test('string perm("ABC")', () {
    final r = permutations([1, 2, 3]);
    expect(r, [
      [1, 2, 3],
      [1, 3, 2],
      [2, 1, 3],
      [2, 3, 1],
      [3, 2, 1],
      [3, 1, 2]
    ]);
  });
}

//  AB
//  CAB ACB ABC
