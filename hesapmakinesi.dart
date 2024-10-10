import 'dart:io';

void main() {
   int exit = 0;

   while(exit==0)
 { print('İlk sayıyı giriniz: ');
  double sayi1 = double.parse(stdin.readLineSync()!);

  print('İkinci sayıyı giriniz: ');
  double sayi2 = double.parse(stdin.readLineSync()!);

  print('Yapmak istediğiniz işlemi giriniz: toplama, cikarma, carpma, bolme ');
  String islem = stdin.readLineSync()!.toLowerCase();

  double sonuc;

  switch (islem) {
    case 'toplama':
      sonuc = sayi1 + sayi2;
      print('SONUÇ: $sonuc');
      break;
    case 'cikarma':
      sonuc = sayi1 - sayi2;
      print('SONUÇ: $sonuc');
      break;
    case 'carpma':
      sonuc = sayi1 * sayi2;
      print('SONUÇ: $sonuc');
      break;
    case 'bolme':
        sonuc = sayi1 / sayi2;
        print('SONUÇ: $sonuc');
      break;
    default:
      print('Geçersiz işlem!');
  }
  print('devam etmek icin 0 çıkmak için 1 tuşlayın:');
  exit =  int.parse(stdin.readLineSync()!);
}
}
