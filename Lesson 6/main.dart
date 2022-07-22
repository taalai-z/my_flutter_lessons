import 'dart:io';

void main() {
  print("Введите первое число");
  double firstNumber = double.parse(stdin.readLineSync()!);

  print("Введите действие: \n+ \n- \n* \n/ ");
  String operation = stdin.readLineSync()!;

  print("Введите второе число");
  double SecondNumber = double.parse(stdin.readLineSync()!);

  double result = 0;

  switch (operation) {
    case '+':
      result = firstNumber + SecondNumber;
      break;
    case '-':
      result = firstNumber - SecondNumber;
      break;
    case '/':
      result = firstNumber / SecondNumber;
      break;
    case '*':
      result = firstNumber * SecondNumber;
      break;
    default:
  }
  print(result);
}
