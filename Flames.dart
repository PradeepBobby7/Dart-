String calculateFalmes(String name1, String name2) {
  List<String> flamesCalculate = [
    "Friends",
    "Lovers",
    "Affection",
    "Marriage",
    "Enemies",
    "Sibilings"
  ];
  String name1Lower = name1.replaceAll(' ', '').toLowerCase();
  String name2Lower = name2.replaceAll(' ', '').toLowerCase();

  for (int i = 0; i < name1Lower.length; i++) {
    String char = name1Lower[i];
    if (name2Lower.contains(char)) {
      name1Lower = name1Lower.replaceFirst(char, '');
      name2Lower = name2Lower.replaceFirst(char, '');
      i--;
    }
  }
  int remainingCount = name1Lower.length + name2Lower.length;
  int flamesIndex = remainingCount % flamesCalculate.length;
  return flamesCalculate[flamesIndex];
}

main() {
  print(calculateFalmes("pradeep", "ratnamandal"));
}