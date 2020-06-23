import 'package:test/test.dart';
import 'package:tree/bst.dart';

final tree = Node<String>(val: "123").add("10").add("200").add("56").add("96");
final tree2 = Node<String>(val: "3").add("2").add("1").add("5").add("4");

void main() {
  test('bst to list', () {
    final r = tree.toList();
    expect(r, ["10", "123", "200", "56", "96"]);
  });
  test('bst balanced', () {
    final r = tree2.balanced();
    expect(r, true);
  });
}
