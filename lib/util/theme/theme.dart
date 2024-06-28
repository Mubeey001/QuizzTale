import 'package:flutter/material.dart';
import 'package:project/util/Constans/color.dart';
import 'package:project/util/theme/custom_theme/text_theme.dart';

class QuizzTaleTheme {
  QuizzTaleTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.white10,
      textTheme: QuizzTaleTextTheme.lightTextTheme);

  static ThemeData dartTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.black,
      textTheme: QuizzTaleTextTheme.darkTextTheme);
}
