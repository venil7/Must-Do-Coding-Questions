bool is_substring(String s, String sub, int i) {
  var j = 0;
  while (j < sub.length) {
    if (s[i] != sub[j]) return false;
    i += 1;
    j += 1;
  }
  return true;
}

int find_substring(String s, String sub) {
  for (var i = 0; i < s.length; i++) {
    if ((s[i] == sub[0]) && is_substring(s, sub, i)) return i;
  }
  return -1;
}
