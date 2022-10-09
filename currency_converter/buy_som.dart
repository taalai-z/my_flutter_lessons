import 'dart:io';

import 'eur.dart';
import 'kzt.dart';
import 'rub.dart';
import 'usd.dart';

buysom() {
  print("Выберите валюту для покупки:");
  print("USD");
  print("EUR");
  print("RUB");
  print("KZT");

  print("Ввод:");
  String choiseCurrency = stdin.readLineSync()!.toUpperCase();

  switch (choiseCurrency) {
    case "USD":
      usd_buy();
      break;

    case "EUR":
      eur_buy();
      break;

    case "RUB":
      rub_buy();
      break;

    case "KZT":
      kzt_buy();
      break;

    default:
      print('Пожалуйста введите валюту');
  }
}
