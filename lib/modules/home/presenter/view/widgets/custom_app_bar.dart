import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'PubliCity',
        style: TextStyle(color: Colors.black),
      ),
      leading: GestureDetector(
        onTap: () {
          scaffoldKey.currentState?.openDrawer();
        },
        child: const Icon(
          Icons.menu_rounded,
          color: Colors.black87,
        ),
      ),
      // actions: const [
      //   Padding(
      //     padding: EdgeInsets.only(right: 12),
      //     child: Icon(
      //       Icons.search,
      //       color: Colors.black87,
      //       size: 30,
      //     ),
      //   )
      // ],
    );
  }
}
