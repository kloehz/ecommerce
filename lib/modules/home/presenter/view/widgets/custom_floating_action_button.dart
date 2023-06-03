import 'package:ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => print('Pressed'),
      backgroundColor: AppColors.primaryColor,
      child: badges.Badge(
        position: badges.BadgePosition.topEnd(top: -24, end: -24),
        badgeContent: const Text(
          '3',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        child: const Icon(
          Icons.shopping_cart,
          color: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
