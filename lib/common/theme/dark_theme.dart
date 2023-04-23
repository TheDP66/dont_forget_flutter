import 'package:dont_forget_app/common/utils/coloors.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    backgroundColor: Coloors.backgroundDark,
  );
}
