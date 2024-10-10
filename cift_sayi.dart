import 'dart:io';

void main()
{
  int i;
  int any = 0;
  int input;
  List<int> sayilar = [];
print('sayilari giriniz');
  for(i=0;i<10;i++)
   
  {  input = int.parse(stdin.readLineSync()!);
     if(input%2==0)
    { any=1;
     sayilar.add(input);
    }
    
  }
  if(any==0)
  print('hiç çift sayi girmediniz');
  else
  {  print('cift sayilar');
     sayilar.forEach((sayi) => print(sayi));
  }







}