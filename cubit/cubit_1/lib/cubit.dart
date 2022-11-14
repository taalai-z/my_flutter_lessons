import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorCubit extends Cubit<ColorStates> {
  ColorCubit() : super(ColorInitialState(color: Colors.red));

  Future<void> changeColor(Color color) async {
    emit(ColorLoadingState(color: color));
    await Future.delayed(const Duration(seconds: 1));
    emit(ColorSuccessState(color: color));
  }
}

abstract class ColorStates {
  ColorStates({required this.color});
  final Color color;
}

class ColorLoadingState extends ColorStates {
  ColorLoadingState({required this.color}) : super(color: color);
  final Color color;
}

class ColorInitialState extends ColorStates {
  ColorInitialState({required this.color}) : super(color: color);
  final Color color;
}

class ColorSuccessState extends ColorStates {
  ColorSuccessState({required this.color}) : super(color: color);
  final Color color;
}

class ColorErrorState extends ColorStates {
  ColorErrorState({required this.color}) : super(color: color);
  final Color color;
}
