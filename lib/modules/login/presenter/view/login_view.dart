import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/modules/login/presenter/widgets/forms_input.dart';
import 'package:ecommerce/modules/login/presenter/widgets/header_clipped_with_back_button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderClippedWithBackButton(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28),
                      child: Text('Bienvenido nuevamente',
                          style: Theme.of(context).textTheme.bodyLarge)),
                  const Text('Ingrese a su cuenta'),
                  const FormInputs()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
