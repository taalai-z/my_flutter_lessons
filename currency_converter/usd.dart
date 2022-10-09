import 'dart:io';

int exchangeRate = 83;
usd_sell() {
  print("Сколько USD хотите продать?");
  int usdAmount = int.parse(stdin.readLineSync()!);
  int sum = usdAmount * exchangeRate;
  print("За $usdAmount долларов вы получите $sum сомов");
}

usd_buy() {
  print("Сколько USD хотите купить?");
  int usdAmount = int.parse(stdin.readLineSync()!);
  int sum = usdAmount * exchangeRate;
  print("$usdAmount долларов вы купите за $sum сом");
}
