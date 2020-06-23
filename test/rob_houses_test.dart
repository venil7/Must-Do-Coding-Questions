import 'package:test/test.dart';
import 'package:tree/rob_houses.dart';

void main() {
  test('rob houses 4', () {
    final a = [1, 2, 3, 1];
    final r = rob(a);
    expect(r, 4);
  });

  test('rob houses 12', () {
    final a = [2, 7, 9, 3, 1];
    final r = rob(a);
    expect(r, 12);
  });

  test('rob houses 23', () {
    final a = [3, 6, 8, 4, 1, 2, 6, 8, 5];
    final r = rob(a);
    expect(r, 23);
  });
}
