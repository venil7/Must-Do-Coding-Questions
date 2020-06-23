import 'dart:math';

String reverse(String input) {
  return input.split(".").reversed.join(".");
}

class Point {
  final int x, y;
  Point(this.x, this.y);
  inXRange(int xi, int xj) => x > min(xi, xj) && x < max(xi, xj);
  inYRange(int yi, int yj) => y > min(yi, yj) && y < max(yi, yj);
}

class Rect {
  final Point topLeft, bottomRight;
  Rect(this.topLeft, this.bottomRight);
  Point get bottomLeft => Point(topLeft.x, bottomRight.y);
  Point get topRight => Point(bottomRight.x, topLeft.y);
  bool constains(Point p) =>
      p.inXRange(topLeft.x, bottomRight.x) &&
      p.inYRange(topLeft.y, bottomRight.y);
}

bool overlap(Rect r1, Rect r2) {
  return r1.constains(r2.topLeft) ||
      r1.constains(r2.topRight) ||
      r1.constains(r2.bottomLeft) ||
      r2.constains(r2.bottomRight);
}

String base26(int index) {
  final alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  // final alphabet = "0123456789ABCDEFGHIJKLMNOP";
  if (index < alphabet.length) return alphabet[index];
  final n = (index / alphabet.length).floor();
  final m = (index % alphabet.length);
  return n > 0 ? base26(n) + base26(m) : base26(m);
}

String excel(int index) => base26(index - (index / 26).floor());

String excel2(int n) {
  final alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  var result = "";
  while (n > 0) {
    final rem = n % 26;
    if (rem == 0) {
      result = "Z$result";
      n = (n / 26).floor() - 1;
    } else {
      result = "${alphabet[rem - 1]}$result";
      n = (n / 26).floor();
    }
  }
}
