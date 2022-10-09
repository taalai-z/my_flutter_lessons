import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9F8A8A),
      body: Stack(
        children: [
          Image.asset('assets/images/Subtract.png'),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 60),
                const Text(
                  'Главная',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff45006F).withOpacity(0.35),
                          blurRadius: 14,
                        )
                      ],
                      color: Colors.white),
                  height: 90,
                  width: 339,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 27,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color(0xffFFD541),
                            radius: 25,
                          ),
                          SvgPicture.asset('assets/svgs/thunder.svg'),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 17),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Начните зарабатывать!',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 7),
                            Text(
                                'Приобретите тариф Behype-PRO\nи начните свою карьеру!')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 44),
                  width: double.infinity,
                  color: const Color(0xffF9F8FF),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Категории',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
