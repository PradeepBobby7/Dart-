class Stringcomp {
  String compress(String word) {
    int i = 0;
    String ans = '';
    while (i < word.length) {
      int count = 1;
      while ((i + count < word.length) &&
          (word[i] == word[count + i]) &&
          (count < 9)) {
        count += 1;
      }
      ans += '$count${word[i]}';
      i += count;
    }
    return ans;
  }
}

void main() {
  var result = Stringcomp();
  var answer = result.compress('aaaabbbcccff');
  print(answer);
}
