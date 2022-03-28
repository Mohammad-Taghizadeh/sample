
import 'package:flutter/material.dart';
import 'package:sample/constant/colors.dart';

const TextStyle _textStyleLight = TextStyle(
    color: CColors.textColorLight,fontWeight: FontWeight.bold
);

const TextStyle _textStyleDark = TextStyle(
    color: CColors.textColorDark,fontWeight: FontWeight.bold
);

class CTextTheme{
  static TextTheme get light => TextTheme(
    bodyText1: _textStyleLight,
    bodyText2: _textStyleLight,
    headline1: _textStyleLight,
    headline2: _textStyleLight,
    headline3: _textStyleLight,
    headline4: _textStyleLight,
    headline5: _textStyleLight,
    headline6: _textStyleLight,
    subtitle1: _textStyleLight,
    subtitle2: _textStyleLight,
  );

  static TextTheme get dark => TextTheme(
    bodyText1: _textStyleDark,
    bodyText2: _textStyleDark,
    headline1: _textStyleDark,
    headline2: _textStyleDark,
    headline3: _textStyleDark,
    headline4: _textStyleDark,
    headline5: _textStyleDark,
    headline6: _textStyleDark,
    subtitle1: _textStyleDark,
    subtitle2: _textStyleDark,
  );
}