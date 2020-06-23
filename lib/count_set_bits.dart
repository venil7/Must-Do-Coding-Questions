String bin(int num) {
  if (num == 0) return "0";
  if (num == 1) return "1";
  final r = (num % 2);
  return (r == 0) ? "${bin((num / 2).floor())}0" : "${bin((num / 2).floor())}1";
}

int numbits(int n) {
  return bin(n).split("").where((el) => el == "1").length;
}
