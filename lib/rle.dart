class Char {
  Char({this.char = "", this.num = 0});
  String char;
  int num;
  @override
  String toString() => num > 0 ? "$char$num" : "";
}

List<Char> accumulate(List<Char> acc, String char) {
  final last = acc.last;
  if (char == last.char) {
    last.num += 1;
    return acc;
  }
  return [...acc, Char(char: char, num: 1)];
}

String rle(String input) {
  return input
      .split("")
      .fold([Char()], accumulate)
      .map((c) => c.toString())
      .join("");
}
