import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/modules/login/presenter/widgets/header_clipped_with_back_button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final safeAreaTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: safeAreaTop,
            color: AppColors.primaryColor,
          ),
          const HeaderClippedWithBackButton(),
        ],
      ),
    );
  }
}
