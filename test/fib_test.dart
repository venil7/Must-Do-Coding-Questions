import 'package:test/test.dart';
import 'package:tree/fib.dart';

void main() {
  test('fib(2) - 1', () {
    final r = fib(2);
    expect(r, 1);
  });
  test('fib(5) - 5', () {
    final r = fib(5);
    expect(r, 5);
  });
  test('fib(12) - 144', () {
    final r = fib(12);
    expect(r, 144);
  });
  test('fib(16) - 987', () {
    final r = fib(16);
    expect(r, 987);
  });
}
