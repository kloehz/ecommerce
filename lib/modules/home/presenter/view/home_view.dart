import 'package:ecommerce/modules/home/presenter/view/widgets/custom_app_bar.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_drawer.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_floating_action_button.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_tab_bar.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          key: scaffoldKey,
          drawer: const CustomDrawer(),
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: CustomAppBar(scaffoldKey: scaffoldKey)),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const CustomFloatingActionButton(),
          bottomNavigationBar: const CustomTabBar(),
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ProductWidget()],
          )),
    );
  }
}
