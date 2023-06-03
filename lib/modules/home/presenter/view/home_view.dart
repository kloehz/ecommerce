import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_app_bar.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_drawer.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_floating_action_button.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
          key: scaffoldKey,
          drawer: const CustomDrawer(),
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: CustomAppBar(scaffoldKey: scaffoldKey)),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const CustomFloatingActionButton(),
          bottomNavigationBar: const CustomTabBar(),
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          )),
    );
  }
}
