import 'package:dont_forget_app/common/utils/coloors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color? greyColor;
  final Color? chatTextFieldBg;

  const CustomThemeExtension({
    this.greyColor,
    this.chatTextFieldBg,
  });

  static const lightMode = CustomThemeExtension(
    greyColor: Coloors.greyLight,
    chatTextFieldBg: Colors.white,
  );

  static const darkMode = CustomThemeExtension(
    greyColor: Coloors.greyDark,
    chatTextFieldBg: Coloors.greyBackground,
  );

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? greyColor,
    Color? chatTextFieldBg,
  }) {
    return CustomThemeExtension(
      greyColor: greyColor ?? this.greyColor,
      chatTextFieldBg: chatTextFieldBg ?? this.chatTextFieldBg,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;

    return CustomThemeExtension(
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      chatTextFieldBg: Color.lerp(chatTextFieldBg, other.chatTextFieldBg, t),
    );
  }
}
