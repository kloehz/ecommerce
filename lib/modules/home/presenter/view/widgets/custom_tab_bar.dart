import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';

final iconList = <IconData>[
  Icons.favorite,
  Icons.person,
];

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: iconList,
      activeIndex: 0,
      backgroundColor: Colors.white,
      shadow: const Shadow(blurRadius: 2, color: Colors.black54),
      gapLocation: GapLocation.center,
      activeColor: AppColors.primaryColor,
      inactiveColor: Colors.grey,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (index) {},
    );
  }
}
