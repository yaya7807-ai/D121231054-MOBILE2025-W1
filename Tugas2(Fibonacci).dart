import 'dart:io';

List<int> fibonacci(int n) {
  if (n < 0) {
    throw ArgumentError("N harus >= 0");
  }

  List<int> sequence = [];
  int a = 0, b = 1;

  for (int i = 0; i <= n; i++) {
    sequence.add(a);
    int temp = a + b;
    a = b;
    b = temp;
  }

  return sequence;
}

void main() {
  stdout.write("Masukkan nilai N: ");
  int? n = int.tryParse(stdin.readLineSync() ?? "");

  if (n == null) {
    print("Input tidak valid, harap masukkan angka bulat.");
  } else {
    print("Barisan Fibonacci ke-$n:");
    print(fibonacci(n));
  }
}
