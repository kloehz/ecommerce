import 'package:ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';

class GradientTextInput extends StatelessWidget {
  const GradientTextInput({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(colors: GradientColors.darkGradient),
      ),
      padding: const EdgeInsets.only(left: 20),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          hintText: label,
          icon: Icon(icon),
        ),
      ),
    );
  }
}
