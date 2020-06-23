import 'package:test/test.dart';
import 'package:tree/prefix.dart';

void main() {
  test('pre --> iinf', () {
    final r = Parser("+*ab*cd").parse().toString();
    expect(r, "((a*b)+(c*d))");
  });

  test('pre --> iinf 2', () {
    final r = Parser("*+a-bc/-de+-fgh").parse().toString();
    expect(r, "((a+(b-c))*((d-e)/((f-g)+h)))");
  });
}
