import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pizza_app/theme/fonts.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 5, top: 16, bottom: 16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://cdn.dodostatic.net/static/Img/Products/c84a4190f97d4364ad2b614bd0d26297_584x584.jpeg',
                  scale: 4,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Бургер-пицца',
                        style: AppTextStyle.default17w500,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'Моцарелла, ветчина из цыпленка, лук красный, томаты, огурцы маринованные томатный соус, бургер соус, чеснок',
                        style: AppTextStyle.default15w400,
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xfffff0e6),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            'от 385 сом',
                            style: TextStyle(color: Color(0xffD25906)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
