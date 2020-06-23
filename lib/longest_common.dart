String longer(String s1, String s2) => (s1.length > s2.length) ? s1 : s2;

String longest_common(String s1, String s2, {int i = 0, int j = 0}) {
  if (i >= s1.length || j >= s2.length) return "";
  if (s1[i] == s2[j]) return s1[i] + longest_common(s1, s2, i: i + 1, j: j + 1);
  return longer(
    longest_common(s1, s2, i: i + 1, j: j),
    longest_common(s1, s2, i: i, j: j + 1),
  );
}

String longest_common2(
  String s1,
  String s2,
) {
  var m = s1.length;
  var n = s2.length;
  List<List<String>> matrix = List.filled(m + 1, List.filled(n + 1, ""));

  for (var i = 0; i <= m; i++) {
    for (var j = 0; j <= n; j++) {
      if (i > 0 && j > 0) {
        if (s1[i - 1] == s2[j - 1]) {
          matrix[i][j] = matrix[i - 1][j - 1] + s1[i - 1];
        } else {
          matrix[i][j] = longer(matrix[i - 1][j], matrix[i][j - 1]);
        }
      }
    }
  }
  return matrix[m][n];
}

//abb bba
