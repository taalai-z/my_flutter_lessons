import 'package:flutter/material.dart';
import 'package:http_zaprosy_1urok/provider/post_provider.dart';
import 'package:http_zaprosy_1urok/repositories/post_repo.dart';
import 'package:http_zaprosy_1urok/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => postProvider(repo: PostRepo()),
        child: MaterialApp(home: HomeScreen()));
  }
}
