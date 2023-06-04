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
      shadow: const Shadow(blurRadius: 2, color: Colors.black54),
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      activeColor: AppColors.primaryColor,
      inactiveColor: Colors.grey,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (index) {},
    );
  }
}
