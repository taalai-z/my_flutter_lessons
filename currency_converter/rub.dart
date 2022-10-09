import 'dart:ffi';
import 'dart:io';

double exchangeRate = 1.32;
rub_sell() {
  print("Сколько RUB хотите продать?");
  int amount = int.parse(stdin.readLineSync()!);
  double sum = amount * exchangeRate;
  print("За $amount рублей вы получите $sum сомов");
}

rub_buy() {
  print("Сколько RUB хотите купить?");
  int amount = int.parse(stdin.readLineSync()!);
  double sum = amount * exchangeRate;
  print("$amount рублей вы купите за $sum сом");
}
