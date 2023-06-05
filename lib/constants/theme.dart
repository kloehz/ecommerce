import 'package:ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData(
  primaryColor: AppColors.primaryColor,
  fontFamily: GoogleFonts.openSans().fontFamily,
  appBarTheme: AppBarTheme(color: Colors.grey[100], elevation: 0),
  iconTheme: const IconThemeData(color: Colors.black87),
  checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(AppColors.secondaryColor),
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
