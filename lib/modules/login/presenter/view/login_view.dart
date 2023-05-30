import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/modules/login/presenter/widgets/header_clipped_with_back_button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final safeAreaTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: safeAreaTop,
              color: AppColors.primaryColor,
            ),
            const HeaderClippedWithBackButton(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
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

class FormInputs extends StatelessWidget {
  const FormInputs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
              hintText: 'Usuario',
              icon: Icon(Icons.person),
              border: InputBorder.none),
        ),
        TextFormField(
          decoration: const InputDecoration(
              hintText: 'Contraseña',
              icon: Icon(Icons.lock),
              border: InputBorder.none),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                    height: 24,
                    width: 24,
                    child: Checkbox(value: true, onChanged: (value) {})),
                const Text('Recordarme')
              ],
            ),
            const Text('Recuperar contraseña')
          ],
        )
      ],
    );
  }
}
