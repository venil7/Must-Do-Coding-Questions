class Token {
  Token left;
  Token right;
  Token({this.left, this.right});
}

enum Op {
  plus,
  minus,
  times,
  div,
  pow,
}

class OpToken extends Token {
  Op op;
  OpToken(this.op, {Token left, Token right}) : super(left: left, right: right);
}

class ValToken extends Token {
  String val;
  ValToken(this.val, {Token left, Token right})
      : super(left: left, right: right);
}

// ((a+b)+c)
// ((ab+)c+)

// (a+(b+c))
// (a(bc+)+) == abc++

// ((cd+)(ba+)+)
// ((c+d)+(b+a))
