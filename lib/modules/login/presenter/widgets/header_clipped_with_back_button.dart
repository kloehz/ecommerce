import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/widgets/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HeaderClippedWithBackButton extends StatelessWidget {
  const HeaderClippedWithBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final safeAreaTop = MediaQuery.of(context).padding.top;

    return Stack(
      children: [
        CustomPaint(
          painter: ClipShadowShadowPainter(
            clipper: SemiCircleClipper(),
            shadow: const Shadow(blurRadius: 20),
          ),
          child: ClipPath(
              clipper: SemiCircleClipper(),
              child: Container(
                height: 200 + safeAreaTop,
                width: double.infinity,
                color: AppColors.secondaryColor,
                child: Padding(
                  padding: EdgeInsets.only(top: safeAreaTop),
                  child: Hero(
                    tag: 'logoTag',
                    child: SvgPicture.asset(
                      'assets/images/index.svg',
                      height: 200,
                      width: double.infinity,
                    ),
                  ),
                ),
              )),
        ),
        Padding(
          padding: EdgeInsets.only(top: safeAreaTop),
          child: Row(
            children: [
              IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(Icons.arrow_back))
            ],
          ),
        )
      ],
    );
  }
}
