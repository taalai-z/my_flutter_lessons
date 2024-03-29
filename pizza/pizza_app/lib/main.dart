import 'package:flutter/material.dart';
import 'package:pizza_app/screens/basket/basket_screen.dart';
import 'package:pizza_app/screens/menu/menu_screen.dart';
import 'package:pizza_app/screens/navigation/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: NavigationScreen(),
    );
  }
}
