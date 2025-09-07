import 'dart:io';

int faktorial(int n) {
  if (n < 0) {
    throw ArgumentError("N harus >= 0");
  }
  int a = 1;

  for (int i = 1; i <= n; i++) {
    a = a * i;
  }

  return a;
}

void main() {
  stdout.write("Masukkan nilai N: ");
  int? n = int.tryParse(stdin.readLineSync() ?? "");

  if (n == null) {
    print("Input tidak valid, harap masukkan angka bulat.");
  } else {
    print("hasil faktorial ke-$n:");
    print(faktorial(n));
  }
}
