import 'dart:io';

void main(List<String> args) {
  //возвращает список, содержащий только общие для них элементы (без дубликатов).
  //Убедитесь, что ваша программа работает с двумя списками разного размера
  //Ответ: [1, 2, 3, 5, 8, 13]

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> result = [];

  for (var i = 0; i < b.length; i++) {
    a.add(b[i]);
  }
  print(a);

  result = a.toSet().toList();
  print(result);

  //2 task:
//   List<int> nums = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
//   List<int> chetnye = [];

//   for (var i = 0; i < nums.length; i++) {
//     if (nums[i] % 2 == 0) {
//       chetnye.add(nums[i]);
//     }
//   }
//   print(chetnye);

//   //3 task

//   print('Введите букву:');
//   String firstLetter = stdin.readLineSync()!;

//   print("Введите предложение:");
//   String secondLetter = stdin.readLineSync()!;

//   checkNumOfLetter(firstLetter, secondLetter);
}

// //3 task function
// checkNumOfLetter(String first, String second) {
//   int count = 0;
//   for (var i = 0; i < second.length; i++) {
//     if (second[i].toLowerCase() == first.toLowerCase()) {
//       count++;
//     }
//   }
//   print('Буква $first была использована $count раз');
// }
