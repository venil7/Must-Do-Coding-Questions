import 'package:test/test.dart';
import 'package:tree/max_product.dart';

void main() {
  test('max prod ', () {
    final r = prod([7, 2, 3, 4, 5, 6, 1, 8, 9, 0]);
    expect(r, 504);
  });
}
