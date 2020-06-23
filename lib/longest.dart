//Longest alternating subsequence

import 'dart:math';

int longestAltrnating(List<int> array) {
  if (array.length == 0) return 0;
  var longest = 1;
  var current = longest;
  var positive = !(array[0] > 0); //true - positive; false - negative;
  for (var i = 1; i < array.length; i++) {
    if ((positive && array[i] > 0) || (!positive && array[i] < 0)) {
      current += 1;
      longest = max(current, longest);
      positive = !positive;
    } else {
      current = 1;
    }
  }
  return longest;
}
