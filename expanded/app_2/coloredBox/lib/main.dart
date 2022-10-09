import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var color = Colors.black;
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Color box',
          ),
        ),
        body: Center(
          child: ChangeColorOfBox(
            child: ColoredBox(),
            color: color,
            width: width,
            height: height,
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                color = Colors.black;
                width = 500;
                height = 200;
                setState(() {});
              },
              backgroundColor: Colors.black,
            ),
            FloatingActionButton(
              onPressed: () {
                color = Colors.red;
                width = 700;
                height = 400;
                setState(() {});
              },
              backgroundColor: Colors.red,
            ),
            FloatingActionButton(
              onPressed: () {
                color = Colors.green;
                width = 250;
                height = 600;

                setState(() {});
              },
              backgroundColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class ColoredBox extends StatelessWidget {
  const ColoredBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainColorOfBox = context
        .dependOnInheritedWidgetOfExactType<ChangeColorOfBox>(aspect: 1)!
        .color;
    final width = context
        .dependOnInheritedWidgetOfExactType<ChangeColorOfBox>(aspect: 2)!
        .width;
    final height = context
        .dependOnInheritedWidgetOfExactType<ChangeColorOfBox>(aspect: 2)!
        .height;
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: width,
      height: height,
      color: mainColorOfBox,
    );
  }
}

class ChangeColorOfBox extends InheritedWidget {
  const ChangeColorOfBox(
      {super.key,
      required this.child,
      required this.color,
      required this.width,
      required this.height})
      : super(child: child);

  final color;
  final width;
  final height;

  final Widget child;
  static ChangeColorOfBox? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ChangeColorOfBox>();
  }

  @override
  bool updateShouldNotify(ChangeColorOfBox oldWidget) {
    return oldWidget.color != color || oldWidget.width != width;
  }
}

// class ExampleText extends StatelessWidget {
//   const ExampleText({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ExampleText2();
//   }
// }

// class ExampleText2 extends StatelessWidget {
//   const ExampleText2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final value = context
//         .dependOnInheritedWidgetOfExactType<MyInhWidget>(aspect: 1)!
//         .value;

//     final value2 = context
//         .dependOnInheritedWidgetOfExactType<MyInhWidget>(aspect: 2)!
//         .value2;
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Text(
//           value.toString(),
//           style: const TextStyle(fontSize: 40),
//         ),
//         Text(
//           value2.toString(),
//           style: const TextStyle(fontSize: 40),
//         ),
//       ],
//     );
//   }
// }

// class MyInhWidget extends InheritedModel<int> {
//   const MyInhWidget(
//       {super.key,
//       required this.child,
//       required this.value,
//       required this.value2})
//       : super(child: child);

//   final int value;
//   final int value2;

//   final Widget child;

//   static MyInhWidget? of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<MyInhWidget>();
//   }

//   @override
//   bool updateShouldNotify(MyInhWidget oldWidget) {
//     return oldWidget.value != value || oldWidget.value2 != value2;
//   }

//   @override
//   bool updateShouldNotifyDependent(
//       covariant MyInhWidget oldWidget, Set dependencies) {
//     // TODO: implement updateShouldNotifyDependent
//     return value != oldWidget.value && dependencies.contains(1) ||
//         value2 != oldWidget.value2 && dependencies.contains(2);
//   }
// }



