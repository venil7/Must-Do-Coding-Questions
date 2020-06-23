import 'package:test/test.dart';
import 'package:tree/subset_sum.dart';

void main() {
  test('subset_sum([3, 34, 4, 12, 5, 2],9) - [4,5]', () {
    final r = subset_sum([3, 34, 4, 12, 5, 2], 9);
    expect(r, [4, 5]);
  });
}
