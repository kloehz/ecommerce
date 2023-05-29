import 'package:ecommerce/widgets/buttons/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButton(
                callback: () => context.go('/login'), text: 'Ingresar'),
            const SizedBox(height: 20),
            RoundedButton(
              callback: () {},
              text: 'Registrarse',
              isTransparent: true,
            )
          ],
        ),
      ),
    );
  }
}
