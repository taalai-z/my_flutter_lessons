import 'dart:io';

void main(List<String> args) {
  String login = 'admin';
  String password = '123';

  print("Введите логин");
  String loginForm = stdin.readLineSync()!;

  print("Введите пароль");
  String passwordForm = stdin.readLineSync()!;

  if (loginForm == login) {}

  int timerCount = 20;
  print("Загорелся зеленый");
}
