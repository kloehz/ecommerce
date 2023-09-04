import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.scaffoldKey, this.canGoBack = false});

  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool canGoBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      centerTitle: true,
      title: const Text(
        'SB',
        style: TextStyle(color: Colors.black),
      ),
      leading: !canGoBack
          ? GestureDetector(
              onTap: () {
                scaffoldKey.currentState?.openDrawer();
              },
              child: const Icon(
                Icons.menu_rounded,
                color: Colors.black87,
              ),
            )
          : null,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(
            Icons.search,
            color: Colors.black87,
            size: 30,
          ),
        )
      ],
    );
  }
}
