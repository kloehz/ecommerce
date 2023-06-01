import 'package:ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';

class GradientTextInput extends StatelessWidget {
  const GradientTextInput(
      {super.key,
      this.isPassword = false,
      required this.label,
      required this.icon});

  final String label;
  final IconData icon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(colors: GradientColors.darkGradient),
      ),
      padding: const EdgeInsets.only(left: 20),
      child: TextFormField(
        obscureText: isPassword,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          hintText: label,
          suffixIcon: isPassword
              ? const Icon(
                  Icons.lock,
                  color: Colors.black54,
                )
              : null,
          icon: Icon(
            icon,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
