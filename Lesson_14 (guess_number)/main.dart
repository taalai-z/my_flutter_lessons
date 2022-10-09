import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  print('Выбеирте режим игры: \n1 - Угадывает комп \n2 - Угадывает чел');

  print('\nВведите число:');
  String gameMod = stdin.readLineSync()!;

  if (gameMod == "1") {
    int min = 0;
    int max = 100;

    print('Выбран 1й режим');
    print('Загадайте число от 1 - 100');
    print('\nЕсли число больше введите + \nесли меньше - \nесли равно =');

    print("Ваше число больше или меньше - ${((max - min) / 2).floor()}?");
    String userAnswer = stdin.readLineSync()!;
    var guess = null;
    bool isCorrect = false;
    while (!isCorrect) {
      guess = (max + min) / 2;
      print(
          "\nnЕсли число $guess больше введите + \nесли меньше - \nесли равно =");
    }
    //использовать Do While циклы, делать деление пока не будет ответа от пользователя =
    //   if (userAnswer == "+") {
    //   } else if (userAnswer == "-") {
    //   } else {}
    // } else if (gameMod == "2") {
    //   print('Выбран 2й режим');
    // } else {
    //   exit(100);
    // }
  }
}
