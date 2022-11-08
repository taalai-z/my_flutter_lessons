import 'package:flutter/material.dart';

import '../../theme/colors/colors.dart';
import '../../theme/colors/textstyle.dart';

class Category extends StatelessWidget {
  const Category(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffF90640),
            Color(0xff8F00FF),
          ],
        ),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: AppColors.colorDED9FF,
            blurRadius: 10,
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
            color: AppColors.colorF9F8FF,
            borderRadius: BorderRadius.circular(14)),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Image.asset(
              image,
              width: 83,
              height: 36,
              scale: 4,
            ),
            const SizedBox(height: 20),
            Text(title, style: AppTextStyle.default15w700),
            const SizedBox(
              height: 6,
            ),
            Text(
              subtitle,
              style: AppTextStyle.default13w400
                  .copyWith(color: const Color(0xffBDBDBD)),
            ),
          ],
        ),
      ),
    );
  }
}
