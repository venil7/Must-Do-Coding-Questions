import 'package:test/test.dart';
import 'package:tree/longest_common.dart';

void main() {
  test('longest common 1', () {
    final r = longest_common2(
      "ABCDGH",
      "AEDFHR",
    );
    expect(r, "ADH");
  });
  test('longest common 2', () {
    final r = longest_common2(
      "AGGTAB",
      "GXTXAYB",
    );
    expect(r, "GTAB");
  });
  test('longest common 3', () {
    final r = longest_common2(
      "AXYT",
      "AYZX",
    );
    expect(r, "AY");
  });
}
