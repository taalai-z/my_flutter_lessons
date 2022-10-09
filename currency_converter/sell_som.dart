import 'dart:io';

import 'eur.dart';
import 'kzt.dart';
import 'rub.dart';
import 'usd.dart';

sellsom() {
  print("Выберите валюту для продажи:");
  print("USD");
  print("EUR");
  print("RUB");
  print("KZT");

  print("Ввод");
  String choiseCurrency = stdin.readLineSync()!.toUpperCase();

  switch (choiseCurrency) {
    case "USD":
      usd_sell();
      break;

    case "EUR":
      eur_sell();
      break;

    case "RUB":
      rub_sell();
      break;

    case "KZT":
      kzt_sell();
      break;

    default:
      print("Пожалуйста вводите валюту");
  }
}
