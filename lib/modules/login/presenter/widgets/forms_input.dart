import 'package:ecommerce/modules/login/presenter/widgets/no_sign_up_yet.dart';
import 'package:ecommerce/modules/login/presenter/widgets/remember_me_and_recover_pass.dart';
import 'package:ecommerce/widgets/buttons/rounded_button.dart';
import 'package:ecommerce/widgets/inputs/gradient_input.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FormInputs extends StatelessWidget {
  const FormInputs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(height: 20),
        const GradientTextInput(label: 'Usuario', icon: Icons.person),
        const SizedBox(
          height: 20,
        ),
        const GradientTextInput(
          label: 'Contraseña',
          icon: Icons.password,
          isPassword: true,
        ),
        const SizedBox(height: 20),
        const RememberMeAndRecoverPass(),
        const SizedBox(
          height: 48,
        ),
        RoundedButton(callback: () => context.go('/home'), text: 'Ingresar'),
        const NoSignUpYet(),
      ],
    );
  }
}
