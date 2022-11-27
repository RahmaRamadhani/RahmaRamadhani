import math
import sys


def persegi():
    print("\n---------------------------")
    print(" Menghitung Luas Persegi")
    print("---------------------------")
    s = int(input("Masukkan panjang sisi : "))
    luas = s * s
    print("Luas Persegi : ", luas)
    tanya()

def lingkaran():
    print("\n---------------------------")
    print(" Menghitung Luas Lingkaran")
    print("---------------------------")
    r = int(input("Masukkan jari-jari : "))
    luas = 22/7 * r * r
    print("Luas Lingkaran : ", luas)
    tanya()


def segitiga():
    print("\n---------------------------")
    print(" Menghitung Luas Segitiga")
    print("---------------------------")
    a = int(input("Masukkan alas : "))
    t = int(input("Masukkan tinggi : "))
    luas = 0.5 * a * t
    print("Luas Segitiga : ", luas)
    tanya()



def menu():
    print("Sitti Rahma Ramadani_D0221106")
    print("TUGAS 3 PBO KELAS H")
    print("PROGRAM MENGHITUNG LUAS")
    print("\nPilih Program :")
    print("	1. Menghitung Luas Persegi")
    print("	2. Menghitung Luas Lingkaran")
    print("	3. Menghitung Luas Segitiga")
    print("	4. Exit")

    pilih = int(input("Masukkan pilihan [1-6] : "))

    if pilih == 1:
        persegi()
    elif pilih == 2:
        lingkaran()
    elif pilih == 3:
        segitiga()
    elif pilih == 4:
        print("Terima kasih sudah menggunakan aplikasi ini!")
        sys.exit()
    else:
        print("\nPilihan yang anda masukkan salah!")
        menu()

def tanya():
    print("\n-----------------------------------------")
    tanya = input(" Ingin mengulang aplikasi lagi? [y/t] : ")
    print("-----------------------------------------")
    if tanya == "y":
        menu()
    elif tanya == "t":
        sys.exit()
    else:
        print("Pilihan yang anda masukan salah!")

menu()