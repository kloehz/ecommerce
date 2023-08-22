import 'package:ecommerce/constants/theme.dart';
import 'package:ecommerce/injection.dart' as dependencies;
import 'package:flutter/material.dart';
import 'package:ecommerce/constants/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  dependencies.init();
  await dotenv.load(fileName: ".env");
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
