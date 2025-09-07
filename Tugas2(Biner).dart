import 'dart:io';

List<int> biner(int n) {
  if (n < 0) {
    throw ArgumentError("N harus >= 0");
  }

  List<int> sequence = [];

  int i = n;
  if (i == 0) {
    sequence.add(0);
  } else {
    while (i > 0) {
      sequence.add(i % 2);
      i = i ~/ 2;
    }
    sequence = sequence.reversed.toList();
  }

  return sequence;
}

void main() {
  stdout.write("Masukkan nilai N: ");
  int? n = int.tryParse(stdin.readLineSync() ?? "");

  if (n == null) {
    print("Input tidak valid, harap masukkan angka bulat.");
  } else {
    print("Angka biner $n:");
    print(biner(n));
  }
}

