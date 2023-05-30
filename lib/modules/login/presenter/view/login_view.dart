import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/modules/login/presenter/widgets/arc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

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
          Stack(
            children: [
              CustomPaint(
                painter: ClipShadowShadowPainter(
                  clipper: SemiCircleClipper(),
                  shadow: const Shadow(blurRadius: 35),
                ),
                child: ClipPath(
                    clipper: SemiCircleClipper(),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      color: AppColors.primaryColor,
                      child: SvgPicture.asset(
                        'assets/images/index.svg',
                        height: 200,
                        width: double.infinity,
                      ),
                    )),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () => context.pop(),
                      icon: const Icon(Icons.arrow_back))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
