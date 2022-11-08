import 'package:flutter/material.dart';
import 'package:navigators/screens/widgets/category_item.dart';

import '../theme/colors/colors.dart';
import '../theme/colors/textstyle.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color4FAE47,
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 70),
              const Text(
                'Главная',
                style: AppTextStyle.default20w700,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.only(
                    left: 28, bottom: 22, right: 28, top: 18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset.zero,
                      blurRadius: 14,
                      color: AppColors.color45006F.withOpacity(0.35),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.colorFFD541,
                      child: Image.asset(
                        'assets/images/thunder.png',
                        width: 23,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Начните зарабатывать',
                          style: AppTextStyle.default15w700,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Приобретите тариф Behype-PRO \nи начните свою карьеру!',
                          style: AppTextStyle.default13w400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.colorF9F8FF,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 19, vertical: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Категории',
                      style: AppTextStyle.default18w700,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Category(
                          image: 'assets/images/item_1.png',
                          title: 'Реклама',
                          subtitle: '106 компаний',
                        ),
                        Category(
                          image: 'assets/images/item_2.png',
                          title: 'Взаимопиар',
                          subtitle: '56 заявок',
                        ),
                        Category(
                          image: 'assets/images/item_3.png',
                          title: 'Бартер',
                          subtitle: '245 заявок',
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Рекламные кампании',
                          style: AppTextStyle.default18w700,
                        ),
                        SizedBox(
                          height: 30,
                          width: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            child: const FittedBox(
                              child: Text(
                                'Все',
                                style: AppTextStyle.default12w500,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.colorF9F8FF,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(
                                0.25), //AppColors.colorDED9FF.withOpacity(0.25),
                            blurRadius: 10,
                            offset: const Offset(
                              0.0,
                              4.0,
                            ),
                          )
                        ],
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(8)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 170,
                            height: 162,
                            child: Image.asset('assets/images/campaign_1.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(8)),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffD96DFF),
                                  Color(0xff6322E0),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            width: 170,
                            height: 30,
                            child: Text(
                              'В новом обновлении',
                              style: AppTextStyle.default15w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
