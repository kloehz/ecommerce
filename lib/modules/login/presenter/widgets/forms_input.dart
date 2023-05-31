import 'package:ecommerce/constants/colors.dart';
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
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 20),
          const GradientTextInput(label: 'Usuario', icon: Icons.person),
          const SizedBox(
            height: 20,
          ),
          const GradientTextInput(label: 'Contraseña', icon: Icons.lock),
          const SizedBox(height: 20),
          const RememberMeAndRecoverPass(),
          const Spacer(),
          RoundedButton(callback: () {}, text: 'Ingresar'),
          const NoSignUpYet(),
        ],
      ),
    );
  }
}
