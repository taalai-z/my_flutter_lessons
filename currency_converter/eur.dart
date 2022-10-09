import 'dart:ffi';
import 'dart:io';

double exchangeRate = 86.2;
eur_sell() {
  print("Сколько EUR хотите продать?");
  int amount = int.parse(stdin.readLineSync()!);
  double sum = amount * exchangeRate;
  print("За $amount евро вы получите $sum сомов");
}

eur_buy() {
  print("Сколько EUR хотите купить?");
  int amount = int.parse(stdin.readLineSync()!);
  double sum = amount * exchangeRate;
  print("$amount евро вы купите за $sum сом");
}
