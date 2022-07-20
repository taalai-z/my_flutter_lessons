import 'dart:io';

void main(List<String> arguments) {
  //Task #1
  // int finger = int.parse(stdin.readLineSync()!);

  // switch (finger) {
  //   case 1:
  //     print("Большой палец");
  //     break;
  //   default:
  //     print("Неполнятное число");
  // }
  // print(finger);

  //Task #2 Определите в какую четверть часа попадает это число
  // int min = int.parse(stdin.readLineSync()!);
  // if (min >= 0 && min <= 14) {
  //   print("Первая четверть");
  // } else if (min >= 15 && min <= 29) {
  //   print("Вторая четверть");
  // } else if (min >= 30 && min <= 44) {
  //   print("Третья четверть");
  // } else if (min >= 45 && min <= 59) {
  //   print("Четвертая четверть");
  // } else {
  //   print("Число $min не входит в четверть");
  // }

  //Task #5
  //Переменная num может принимать одно из значений: 1, 2, 3 или 4.
  //Если она имеет значение '1', то в переменную result запишем 'зима',
  //если имеет значение '2' – 'лето' и так далее.

  int num = int.parse(stdin.readLineSync()!);
  var result = '';
  switch (num) {
    case 1:
      result = 'зима';
      break;
    case 2:
      result = 'лето';
      break;
    case 3:
      result = 'весна';
      break;
    case 4:
      result = 'осень';
      break;
  }
  print(result);

  // Task #6
  //Если переменная a меньше нуля, то выведите 'Верно', иначе выведите 'Неверно'.
  //Проверьте работу скрипта при a, равном 1, 0, -3.

  int a = int.parse(stdin.readLineSync()!);
  if (a < 0) {
    print("Верно");
  } else {
    print('Неверно');
  }
}
