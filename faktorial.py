def hitung_faktorial(n):
    hasil = 1
    for i in range(1, n + 1):
        hasil *= i
    return hasil

try:
    angka = int(input("Masukkan bilangan bulat (minimal 0): "))
    if angka < 0:
        print("Bilangan harus 0 atau lebih.")
    else:
        print(f"Faktorial dari {angka} adalah {hitung_faktorial(angka)}")
except ValueError:
    print("Input tidak valid. Masukkan bilangan bulat.")
