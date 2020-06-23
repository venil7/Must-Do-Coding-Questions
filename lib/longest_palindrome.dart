bool palindrome(String s) => s != "" && s == s.split('').reversed.join('');
String better(String s1, String s2) => s1.length >= s2.length ? s1 : s2;

String longest_palindrome(String s, {i = 0, j = 0}) {
  if (i == j) return longest_palindrome(s, i: i, j: j + 1);
  if (i > s.length || j > s.length) return "";
  final substr = s.substring(i, j);
  final v1 = palindrome(substr) ? substr : "";
  final v2 = longest_palindrome(s, i: i, j: (j + 1));
  final v3 = longest_palindrome(s, i: i + 1, j: (j + 2));

  return better(v1, better(v2, v3));
}
