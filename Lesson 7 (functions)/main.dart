import 'dart:ffi';
import 'dart:io';

void main() {
  //1 task
  // print('Введите число:');
  // int number1 = int.parse(stdin.readLineSync()!);
  // print('Квадрат числа $number1 – ${square(number1)}');

  //2 task
  // print('Введите 1е число');
  // int number2 = int.parse(stdin.readLineSync()!);
  // print('Введите 2е число');
  // int number3 = int.parse(stdin.readLineSync()!);
  // sumTwoNum(number2, number3);

  //3 task
  /*print('Введите 1е число');
  int number4 = int.parse(stdin.readLineSync()!);
  print('Введите 2е число');
  int number5 = int.parse(stdin.readLineSync()!);
  print('Введите 3е число');
  int number6 = int.parse(stdin.readLineSync()!);
  mathThreeNums(number4, number5, number6);
  */

  //4 task Напишите функцию, которая принимает целые минуты и преобразует их в секунды.
  /*print('Введите минуты:');
  int minutes = int.parse(stdin.readLineSync()!);
  minToSec(minutes);
  */

  //5 task Есть массив, List array = [1, 3, 4, 5, 6]; возвратите его первый элемент
  // List array = [9, 3, 4, 5, 6];
  // firstFromArray(array);

  //6 task Создайте bool переменную и напишите условие (if…else), выведите сообщение «Переменная имеет значение (значение вашей переменной)
  // bool isGood = true;
  //checkMood(isGood);

  //7 task Создайте функцию, которая принимает число в качестве единственного аргумента и возвращает true, если оно меньше или равно нулю, в противном случае возвращает false.
  //print('Введите пожалуйста число');
  //int number7 = int.parse(stdin.readLineSync()!);
  //print(isItLessNull(number7));

  //8 task Дан массив с числами.
  //Проверьте, есть ли в нем два одинаковых числа подряд.
  //Если есть - выведите 'да', а если нет - выведите 'нет'.

  List manyNumbers = [0, 1, 87, 23, 22, 12, 12, 22, 43, 7];
  print(checkNumbersRow(manyNumbers));
}

//1 task
int square(int num) {
  num *= num;
  return num;
}

//2 task
sumTwoNum(int number2, int number3) {
  var sum = number2 + number3;
  return print(sum);
}

//3 task
mathThreeNums(first, second, third) {
  var math = (first - second) / third;
  return print(math);
}

//4 task
minToSec(int minutes) {
  var toSec = minutes * 60;
  return print(toSec);
}

//5 task
firstFromArray(arr) {
  return print(arr[0]);
}

//6 task
checkMood(bool) {
  if (bool) {
    print('Значение переменной $bool');
  } else {
    print('The mood is bad so fuck you');
  }
}

//7 task
isItLessNull(number) {
  if (number <= 0) {
    return true;
  } else {
    return false;
  }
}

//8 task
checkNumbersRow(arr) {
  for (var i = 1; i < arr.length; i++) {
    if (arr[i] == arr[i - 1]) {
      return true;
    }
  }
  return false;
}
