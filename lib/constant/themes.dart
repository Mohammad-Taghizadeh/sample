import 'package:flutter/material.dart';
import 'colors.dart';

class CThemes{

static final light = ThemeData.light().copyWith(
    primaryColor: CColors.primaryColor,
  scaffoldBackgroundColor: CColors.secondaryBackgroundColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: CColors.primaryBackgroundColor
    ),
  textTheme: TextTheme(
    bodyText1: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: CColors.textColorLight),
    bodyText2: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: CColors.textColorLight),
    headline1: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: CColors.textColorLight),
    headline2: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: CColors.textColorLight),
    headline3: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: CColors.textColorLight),
    headline4: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: CColors.textColorLight),
    headline5: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: CColors.textColorLight),
    headline6: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: CColors.textColorLight),
    subtitle1: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: CColors.textColorLight),
    subtitle2: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: CColors.textColorLight),
  )
);

static final dark = ThemeData.dark().copyWith(
    primaryColor: CColors.primaryColor,
    scaffoldBackgroundColor: CColors.primaryBackgroundColorDark,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: CColors.secondaryBackgroundColorDark
  ),
    textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: CColors.textColorDark),
        bodyText2: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: CColors.textColorDark),
        headline1: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: CColors.textColorDark),
        headline2: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: CColors.textColorDark),
        headline3: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: CColors.textColorDark),
        headline4: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: CColors.textColorDark),
        headline5: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: CColors.textColorDark),
        headline6: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: CColors.textColorDark),
        subtitle1: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: CColors.textColorDark),
        subtitle2: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: CColors.textColorDark),
    )
);
}