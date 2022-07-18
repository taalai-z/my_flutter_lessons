void main(List<String> arguments) {
  //Task #1 Выведите в конслоли превый, пятый и последний элемент списка.
  List numbers = [1, 7, 12, 3, 56, 2, 87, 34, 54];

  print('Первый элемент -  $numbers.first');
  print('Пятый элемент - $numbers[4]');
  print('Последний элемент - $numbers.last');

  //Task #2 Объедените данные массивы и выведите в консоли
  List numbers2 = [3, 12, 43, 1, 25, 6, 5, 7];
  List numbers3 = [55, 11, 23, 56, 78, 1, 9];
  numbers2.addAll(numbers3);

  print(numbers2);

  //Task #3 из данного массива необходимо вывести в консоли массив ['F','l','u','t','t','e','R']
  List text = [
    'a',
    'd',
    'F',
    'l',
    'u',
    't',
    't',
    'e',
    'R',
    'y',
    '3',
    'b',
    'h',
    'j'
  ];

  print(text.sublist(2, 9));

//Task #4 выведите true если массивы слодержит цифру 3 [1, 2, 3, 4, 5, 6, 7],
//также покажите первый и последний элемент массива и его длину.
  List numbers4 = [1, 2, 3, 4, 5, 6, 7];
  print(numbers4.contains(3));

  //Task #5 Done
  List fromServer = [601, 123, 2, "dart", 45, 95, "dart24", 1];
  print('Is the List has a "dart" word - ${fromServer.contains("dart")}!');
  print('Is the List has a 951 number - ${fromServer.contains(951)}!');
  print(
      'Is the List has a 951 & "dart" - ${fromServer.contains(951) && fromServer.contains("dart")}');

  //Task #6 Попробуйте определить содержит ли список значение переменной myDart (Именно с большой буквы).
  // ек выполнил
  List fromServer2 = ['post', 1, 0, 'flutter'];
  String myDart = 'Flutter';
  print(fromServer2.contains(myDart.toLowerCase()));

//Task #7 объединить все элементы массива в одну строку
//и разделить каждое слово символом ‘*’ и сделать принт перменной myFlutter;
  List strings = ['I', 'started', 'learn', 'Flutter', 'since', 'Jule'];
  String myFlutter = '';
  myFlutter = strings.join(' * ');
  print(myFlutter);

  //Task 8 провести сортировку массива, чтобы все элементы начинались по возрастающей.
  List<int> sortNums = [1, 9, 3, 195, 202, 2, 5, 7, 9, 10, 3, 15, 0, 11];
  sortNums.sort();
  print(sortNums);
}
