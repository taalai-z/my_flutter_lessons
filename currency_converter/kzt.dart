import 'dart:ffi';
import 'dart:io';

double exchangeRate = 0.11;
kzt_sell() {
  print("Сколько KZT хотите продать?");
  String IsItNum = stdin.readLineSync()!;
  double amount = double.tryParse(IsItNum) ?? 0;
  if (amount > 0) {
    double sum = amount * exchangeRate;
    print("За $amount тенге вы получите $sum сомов");
  } else {
    print("Ты тупой? Вводи только числа!");
  }
}

kzt_buy() {
  print("Сколько KZT хотите купить?");
  String IsItNum = stdin.readLineSync()!;
  double amount = double.tryParse(IsItNum) ?? 0;
  if (amount > 0) {
    double sum = amount * exchangeRate;
    print("$amount тенге вы купите за $sum сом");
  } else {
    print("Ты тупой? Вводи только числа!");
  }
}
