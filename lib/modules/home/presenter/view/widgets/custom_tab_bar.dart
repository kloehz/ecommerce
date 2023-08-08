import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required NotchBottomBarController controller,
    required PageController pageController,
  })  : _controller = controller,
        _pageController = pageController;

  final NotchBottomBarController _controller;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return AnimatedNotchBottomBar(
      color: AppColors.primaryColor,
      notchBottomBarController: _controller,
      durationInMilliSeconds: 200,
      itemLabelStyle: const TextStyle(color: Colors.white),
      bottomBarItems: const [
        BottomBarItem(
          inActiveItem: Icon(
            Icons.home,
            color: Colors.white,
          ),
          activeItem: Icon(
            Icons.home,
            color: AppColors.primaryColor,
          ),
          itemLabel: 'Inicio',
        ),
        BottomBarItem(
          inActiveItem: Icon(
            Icons.map_sharp,
            color: Colors.white,
          ),
          activeItem: Icon(
            Icons.map_sharp,
            color: AppColors.primaryColor,
          ),
          itemLabel: 'Mapa',
        ),
      ],
      onTap: (index) {
        _pageController.jumpToPage(index);
      },
    );
  }
}
