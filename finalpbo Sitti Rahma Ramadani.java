package com.final;

public class finalpbo {

  public static void main(String[] args) {
 # NAMA : NURMADINA
# NIM : D0221379
# KELAS : INFORMATIKA F

class Kubus():
    def __init__(self,Sisi):
        self.Sisi = Sisi
    def Volume (self):
        Volume = self.Sisi**3
        print("Volume Kubus Adalah: ",Volume)
    def Luas (self):
        Luas = 6*self.Sisi**2
        print("Luas Kubus Adalah: ",Luas)

class Balok():
    def __init__(self,Panjang,Lebar,Tinggi):
        self.p = Panjang
        self.l = Lebar
        self.t = Tinggi        
    def Volume(self):
        Volume = self.p * self.l * self.t
        print("Volume Balok Adalah: ",Volume)
    def Luas(self):
        Luas = 2* (self.p * self.l * self.t + self.p)
        print("Luas Balok Adalah: ",Luas)

class Tabung():
    def __init__(self,Jari,Tinggi):
        self.j = Jari
        self.t = Tinggi
    def Volume(self):
        Volume = 22/7 * self.j**2 * self.t
        print("Volume Tabung Adalah: ",round(Volume,2))
    def Luas(self):
        Luas = 2 * 22/7 * self.j * self.t + 2 * 22/7 * self.j **2
        print("Luas Tabung Adalah: ",round(Luas,2))

class LimasSegitiga():
    def __init__(self,Alas,SisiTegak,Tinggi):
        self.a = Alas
        self.st = SisiTegak
        self.t = Tinggi
    def Volume(self):
        Volume = 1/3 * self.a * self.t
        print("Volume Limas Segitiga Adalah: ",round(Volume,2))
    def Luas(self):
        Luas = 1/2 * self.a * self.t + 3 * self.st
        print("Luas Limas Segitiga adalah: ",round(Luas,2))

while True:
    print("\n")
    print("PROGRAM MENGHITUNG LUAS DAN VOLUME BANGUN RUANG")
    print("1. Menghitung Luas Dan Volume Kubus")
    print("2. Menghitung Luas Dan Volume Balok")
    print("3. Menghitung Luas Dan Volume Tabung")
    print("4. Menghitung Luas Dan Volume Limas Segitiga")
    print("5. Keluar")

    Pilih = int(input("Masukkan Pilihan Anda: "))

    if Pilih == 1:
        sisi = float(input("Masukkan Sisi Kubus: "))
        kubus = Kubus(sisi)
        kubus.Volume()
        kubus.Luas()
    elif Pilih == 2:
        p = float(input("Masukkan Panjang Balok: "))
        l = float(input("Masukkan Lebar Balok: "))
        t = float(input("Masukkan Tinggi Balok: "))
        balok = Balok(p,l,t)
        balok.Volume()
        balok.Luas()
    elif Pilih == 3:
        j = float(input("Masukkan Jari-Jari Tabung: "))
        t = float(input("Masukkan Tinggi Tabung: "))
        tabung = Tabung (j,t)
        tabung.Volume()
        tabung.Luas
    elif Pilih == 4:
        a = float(input("Masukkan Alas: "))
        st = float(input("Masukkan Sisi Tegak: "))
        t = float(input("Masukkan Tinggi: "))
        limassegitiga = LimasSegitiga(a,st,t)
        limassegitiga.Volume()
        limassegitiga.Luas()
    elif Pilih == 5:
        print("PROGRAM SELESAI".center(50,"_"))
        exit()
    else:
        print('''Pilihan Salah
        Silahkan Coba Lagi!!!''')
   
  }
}
