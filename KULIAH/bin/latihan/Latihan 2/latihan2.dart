void main() {
  Map<String, dynamic> users = {
    'Ajuwan': 123,
    'akbar': 1,
    'alun': 2,
    'dewa': 3,
    'dankos': 123,
  };

  users.forEach((key, value) {
    print("${key} : ${value}");
  });
}
