import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/util/Constans/color.dart';

class QuizzTaleTextTheme {
  QuizzTaleTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: GoogleFonts.poppins(
          fontSize: 24.0, color: primaryColor, fontWeight: FontWeight.w500));

  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: GoogleFonts.poppins(
          fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.w700));
}
