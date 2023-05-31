import 'package:ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData(
  // brightness: Brightness.dark,
  // primaryColor: Colors.lightBlue[800],
  fontFamily: GoogleFonts.openSans().fontFamily,
  checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(AppColors.primaryColor),
      checkColor: MaterialStateProperty.all(Colors.black)),
  textTheme: TextTheme(
    displayLarge: const TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
        fontSize: 36.0, fontFamily: GoogleFonts.openSans().fontFamily),
    titleMedium: TextStyle(
        fontSize: 22.0, fontFamily: GoogleFonts.openSans().fontFamily),
    bodyLarge: TextStyle(
        fontSize: 26.0, fontFamily: GoogleFonts.openSans().fontFamily),
    bodyMedium: TextStyle(
        fontSize: 14.0, fontFamily: GoogleFonts.openSans().fontFamily),
  ),
);
