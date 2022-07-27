import 'dart:math';

void main() {
  //arrays:
  List<int> list = [1, 2, 3, 4, 0, 5, 7, 5];
  List<dynamic> lists = [1, '2', true, 1, 4, false, 'qwerty'];

  list.sort(((a, b) => a.compareTo(b)));

  //functions:
  checkDublicate(list);
  average(list);
  checkLength(list);
  checkType(lists);
}

// 1 task
checkDublicate(List<int> arr) {
  int previus = 0;
  bool isCointains = false;
  for (var e in arr) {
    if (previus == e) {
      isCointains = true;
    }
    previus = e;
  }
  print(isCointains);
}

// 2 task
average(List<int> arr) {
  int result = 0;
  int length = 0;
  for (var element in arr) {
    result = result + element;
    length += 1;
  }
  return print(result / length);
}

// 3 task
checkLength(arr) {
  int value = 0;
  for (var e in arr) {
    value++;
  }
  print(value);
}

//4 task
checkType(arr) {
  List<dynamic> newList = [];
  for (var e in arr) {
    newList.add(e.runtimeType);
  }
  print(newList);
}
