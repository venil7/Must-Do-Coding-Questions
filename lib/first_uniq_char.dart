class Tuple {
  Tuple(this.index, this.count);
  int index;
  int count;
}

int first_uniq(String s) {
  final map = Map<String, Tuple>();
  for (final i in List.generate(s.length, (x) => x)) {
    if (!map.containsKey(s[i])) {
      map[s[i]] = Tuple(i, 1);
    } else {
      map[s[i]].count += 1;
    }
  }

  final i = map.values
      .where((x) => x.count == 1)
      .fold<int>(s.length, (acc, t) => t.index < acc ? t.index : acc);
  return i == s.length ? -1 : i;
}

// aaab
