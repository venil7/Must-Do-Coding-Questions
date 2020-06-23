int decoding(String message) {
  final numbers = message.split("").map(int.parse).toList();
  if (numbers.length == 0) return 1;
  if (numbers.length == 1) return 1;
  final first = numbers.first;
  final second = numbers.skip(1).first;
  final rest_after_first = numbers.skip(1);
  final rest_after_second = numbers.skip(2);
  return decoding(rest_after_first.join("")) +
      (first * 10 + second <= 26 ? decoding(rest_after_second.join("")) : 0);
}

// "1236"
