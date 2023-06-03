import 'package:flutter/material.dart';

class GradientColors {
  GradientColors._();

  static List<Color> darkGradient = [
    const Color.fromARGB(255, 131, 230, 250),
    const Color.fromARGB(255, 131, 230, 250).withOpacity(0.4)
  ];
}

class AppColors {
  AppColors._();

  static const Color primaryColor = Color(0xff4042b7);
  static const Color secondaryColor = Color(0xffc9f0f8);
}
