import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
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
      notchBottomBarController: _controller,
      color: Colors.white,
      showLabel: false,
      notchColor: Colors.black87,
      removeMargins: false,
      bottomBarWidth: 500,
      durationInMilliSeconds: 300,
      bottomBarItems: const [
        BottomBarItem(
          inActiveItem: Icon(
            Icons.home_filled,
            color: Colors.blueGrey,
          ),
          activeItem: Icon(
            Icons.home_filled,
            color: Colors.blueAccent,
          ),
          itemLabel: 'Page 1',
        ),
        BottomBarItem(
          inActiveItem: Icon(
            Icons.home_filled,
            color: Colors.blueGrey,
          ),
          activeItem: Icon(
            Icons.home_filled,
            color: Colors.blueAccent,
          ),
          itemLabel: 'Page 2',
        ),
      ],
      onTap: (index) {
        log('current selected index $index');
        _pageController.jumpToPage(index);
      },
    );
  }
}
