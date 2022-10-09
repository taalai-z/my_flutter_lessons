import 'dart:io';

import 'buy_som.dart';
import 'sell_som.dart';

void main(List<String> args) {
  print("Курс на сегодня:");
  print("USD: 83");
  print("EUR: 86.2");
  print("RUB: 1.32");
  print("KZT: 0.11");

  print('1 - Обменять валюту на сом?');
  print('2 - Обменять сом на валюту?');

  print('Ввод:');
  String vvod = stdin.readLineSync()!;
  int choiseNum = int.tryParse(vvod) ?? 0;

  if (choiseNum == 1) {
    sellsom();
  } else if (choiseNum == 2) {
    buysom();
  } else {
    print("Выберите число 1 или 2");
  }
}
