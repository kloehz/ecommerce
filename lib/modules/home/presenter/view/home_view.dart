import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/presenter/view/cubit/home_cubit.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_app_bar.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_drawer.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_floating_action_button.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_tab_bar.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final homeCubit = locator.get<HomeCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      bloc: homeCubit,
      builder: (context, state) {
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
              body: state.when(
                  loading: () {
                    homeCubit.getProducts();
                    return const Center(child: CircularProgressIndicator());
                  },
                  failed: () => const Center(
                      child: Text('Ha ocurrido un error, intente nuevamente')),
                  success: (items) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: GridView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return ProductWidget(product: items[index]);
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height * 0.8),
                            crossAxisCount: 2),
                      ),
                    );
                  })),
        );
      },
    );
  }
}
