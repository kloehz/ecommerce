import 'package:ecommerce/utils/shared_utils.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = context.height;

    return Material(
      child: Container(
        color: Colors.red,
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
            )
          ],
        ),
      ),
    );
  }
}
