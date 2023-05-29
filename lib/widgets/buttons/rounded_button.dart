import 'package:ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final dynamic callback;
  final bool isTransparent;
  final String text;
  final double height;
  const RoundedButton(
      {super.key,
      required this.callback,
      this.isTransparent = false,
      this.height = 50.0,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        border: isTransparent ? Border.all() : null,
        gradient: isTransparent
            ? null
            : LinearGradient(colors: GradientColors.darkGradient),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
          onPressed: callback,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium,
          )),
    );
  }
}
