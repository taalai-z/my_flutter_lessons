import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pictures/theme/colors.dart';
import 'package:pictures/theme/text_styles.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyles.nunito16w400,
              ))
        ],
      ),
      body: PageView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset('assets/images/welcome.png'),
                ),
                const SizedBox(
                  height: 113,
                ),
                Text(
                  "Welcome",
                  style: TextStyles.nunito40w700,
                ),
                const SizedBox(height: 25),
                Text(
                  "There are so many things you have to \n experience in your life...",
                  style: TextStyles.nunito16w400
                      .copyWith(color: AppColors.blackTextColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset('assets/images/welcome2.png'),
                ),
                const SizedBox(
                  height: 84,
                ),
                Text(
                  "MyDay Time",
                  style: TextStyles.nunito40w700,
                ),
                const SizedBox(height: 25),
                Text(
                  "prepared for you list of tasks to keep yourself \n busy and challenged every day, making it more\n fun and enjoyable",
                  style: TextStyles.nunito16w400
                      .copyWith(color: AppColors.blackTextColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
