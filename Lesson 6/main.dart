import 'dart:io';

void main() {
  double result = 0;

  print("Введите первое число");
  double firstNumber = double.parse(stdin.readLineSync()!);

  print("Введите действие: \n+ \n- \n* \n/ \n^2");
  String operation = stdin.readLineSync()!;

  if (operation == '^2') {
    print(firstNumber * firstNumber);
    exit(200);
  }
  print("Введите второе число");
  double SecondNumber = double.parse(stdin.readLineSync()!);

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
