import 'package:dont_forget_app/common/utils/coloors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    backgroundColor: Coloors.backgroundLight,
  );
}
