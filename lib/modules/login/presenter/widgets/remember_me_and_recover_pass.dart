import 'package:flutter/material.dart';

class RememberMeAndRecoverPass extends StatelessWidget {
  const RememberMeAndRecoverPass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
