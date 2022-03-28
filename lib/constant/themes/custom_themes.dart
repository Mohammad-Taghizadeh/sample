import 'package:flutter/material.dart';
import 'package:sample/constant/colors.dart';
import 'package:sample/constant/themes/custom_text_theme.dart';

class CThemes {

  static final light = ThemeData(
      fontFamily: "BYekan",
      cardColor: CColors.cardColorLight,
      primaryColor: CColors.primaryColor,
      scaffoldBackgroundColor: CColors.secondaryBackgroundColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: CColors.primaryBackgroundColor),
      textTheme: CTextTheme.light);

  static final dark = ThemeData(
    fontFamily: "BYekan",
    cardColor: CColors.cardColorDark,
    primaryColor: CColors.primaryColor,
    scaffoldBackgroundColor: CColors.primaryBackgroundColorDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: CColors.secondaryBackgroundColorDark),
    textTheme: CTextTheme.dark,
  );
}
