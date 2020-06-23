import 'package:test/test.dart';
import 'package:tree/binary_mirror.dart';

Tree tree = Tree(
  1,
  left: Tree(3),
  right: Tree(
    2,
    left: Tree(5),
    right: Tree(4),
  ),
);

void main() {
  test('tree mirror', () {
    final r = mirror(tree);
    expect(r.toString(),
        "1->L2->L4->Lnull,->Rnull,->R5->Lnull,->Rnull,->R3->Lnull,->Rnull");
  });
}
