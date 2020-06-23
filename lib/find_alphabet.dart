List<String> words(String first, String second) {
  if (first == "" && second == "") return [];
  if (second == "") return [first[0]];
  if (first == "") return [second[0]];
  // if (first[0] == second[0])
  return [first[0]]..addAll(words(first.substring(1), second.substring(1)));
  // return
}

// List<String> alphabet(List<String> words) {
//   var first = words.first;
//   var second = words.skip(1).first;
// }
