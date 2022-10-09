import 'dart:ffi';

void main(List<String> arguments) {
  //Task #3
  //Переменная lang может принимать 2 значения: ru; en;. Если она имеет значение ru, то в переменную arr
  //запишем массив дней недели на русском языке, а если имеет значение en; – то на английском

  var lang = "en";
  List arr = [];
  if (lang == "ru") {
    arr = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];
  } else if (lang == "en") {
    arr = ['Mn', 'Tu', 'Wd', 'Th', 'Fr', 'St', 'Su'];
  } else {
    print("Error - $lang");
  }
  print(arr);

  //Task #4
  //Дана строка, состоящая из символов, например, 'abcde'.
  //Проверьте, что первым символом этой строки является буква 'a'.
  //Если это так - выведите 'да', в противном случае выведите 'нет'.

  String one = 'abcde';
  if (one[0] == 'a') {
    print('Да');
  } else {
    print('Нет');
  }

  //Task #7 Дана строка из 6-ти цифр.
  //Проверьте, что сумма первых трех цифр равняется сумме вторых трех цифр.
  //Если это так - выведите 'да', в противном случае выведите 'нет'.

  //Task #8 Нужно написать условие для действий пешехода при различных сигналах светофора.
  //Если сигнал красный, то надо стоять, иначе, если желтый - надо приготовиться, а иначе - можно идти

  var lightIs = 'Red';
  var whatToDo = '';
  if (lightIs.toLowerCase() == 'red') {
    whatToDo = 'Stop and wait';
  } else if (lightIs.toLowerCase() == 'yellow') {
    whatToDo = 'Be ready to move';
  } else if (lightIs.toLowerCase() == 'green') {
    whatToDo = 'Move forward';
  } else {
    print("Error the light is incorrect");
  }
  print(whatToDo);
}
