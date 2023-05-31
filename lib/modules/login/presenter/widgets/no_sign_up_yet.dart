import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoSignUpYet extends StatelessWidget {
  const NoSignUpYet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('No esta registrado?'),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: () => context.goNamed('/index'),
            child: Container(
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1))),
                child: const Text(
                  'Registrese',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
