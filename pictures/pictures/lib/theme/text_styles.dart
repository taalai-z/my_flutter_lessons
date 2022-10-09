import 'package:flutter/material.dart';
import 'package:pictures/theme/colors.dart';

abstract class TextStyles {
  static TextStyle nunito16w400 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColors.skipColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.41);

  static TextStyle nunito40w700 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColors.blackTextColor,
      fontSize: 40,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.37);
}
