import 'package:ecommerce/constants/theme.dart';
import 'package:ecommerce/injection.dart' as dependencies;
import 'package:flutter/material.dart';
import 'package:ecommerce/constants/routes.dart';

void main() {
  dependencies.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: themeData,
      routerConfig: routes,
    );
  }
}
