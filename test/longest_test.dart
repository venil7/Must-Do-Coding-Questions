import 'package:test/test.dart';
import '../lib/longest.dart';

void main() {
  test('Longest alterating array 1', () {
    final a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    final r = longestAltrnating(a);
    expect(r, 1);
  });

  test('Longest alterating array 4', () {
    final a = [-4, 3, -5, 9, 10, 12, 2, -1];
    final r = longestAltrnating(a);
    expect(r, 4);
  });

  test('Longest alterating array 0', () {
    final List<int> a = [];
    final r = longestAltrnating(a);
    expect(r, 0);
  });

  test('Longest alterating array 3', () {
    final a = [-1, 1, -1];
    final r = longestAltrnating(a);
    expect(r, 3);
  });

  test('Longest alterating array 2', () {
    final a = [10, 12, 2, -1];
    final r = longestAltrnating(a);
    expect(r, 2);
  });
}
