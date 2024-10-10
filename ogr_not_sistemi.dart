 import 'dart:io';

class Ogrencibilgi {
  String ad;
  String soyad;
  List<int> notlar = [];

  // Kurucu metod
  Ogrencibilgi(this.ad, this.soyad);

  
  void notEkle(int not) {
    notlar.add(not);
    print("Not başarıyla eklendi: $not");
  }

  // Ortalama hesaplayan fonksiyon
  double ortalamaHesapla() {
    if (notlar.isEmpty) {
      print("Henüz not eklenmedi.");
      return 0;
    } else {
      int toplam = 0;
      for (int not in notlar) {
        toplam += not;
      }
      return toplam / notlar.length;
    }
  }
}

void main() {
  
  print("Öğrenci adını girin:");
  String? ad = stdin.readLineSync();

  print("Öğrenci soyadını girin:");
  String? soyad = stdin.readLineSync();

  // Ogrenci nesnesi
  Ogrencibilgi ogrenci = Ogrencibilgi(ad!, soyad!);
  String? cevap = "devam";
  // Not ekle
  while (cevap=="devam") {
  

      print("Eklemek istediğiniz notu girin:");
      String? notStr = stdin.readLineSync();
      int not = int.parse(notStr!);

      ogrenci.notEkle(not);
    
    print(' not eklemeye devam etmek için devam çıkmak için çıkış kelimesini tuşlayın');
  cevap = stdin.readLineSync();
  }


  double ortalama = ogrenci.ortalamaHesapla();
  print("${ogrenci.ad} ${ogrenci.soyad} adlı öğrencinin ortalaması: $ortalama");
}
