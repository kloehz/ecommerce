import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/presenter/view/cubit/home_cubit.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_app_bar.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_drawer.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_floating_action_button.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_tab_bar.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/product_widget.dart';
import 'package:ecommerce/utils/shared_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final homeCubit = locator.get<HomeCubit>();
    final width = context.width;

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
                    return CustomScrollView(
                      slivers: [
                        SliverAppBar(
                          leading: Container(),
                          leadingWidth: 0,
                          snap: true,
                          floating: true,
                          title: SizedBox(
                            width: width,
                            height: 40,
                            child: const CategoriesFilter(),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 16),
                          sliver: SliverGrid.builder(
                            itemCount: items.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: MediaQuery.of(context)
                                            .size
                                            .width /
                                        (MediaQuery.of(context).size.height *
                                            0.8),
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return ProductWidget(product: items[index]);
                            },
                          ),
                        )
                      ],
                    );
                  })),
        );
      },
    );
  }
}

class CategoriesFilter extends StatelessWidget {
  const CategoriesFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 7,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (_, __) => const SizedBox(width: 8),
      itemBuilder: (_, index) {
        final bool isSelected = index == 0;
        return ItemCategoryFilter(
            isSelected: isSelected,
            name: mockedCategories[index]['name'],
            icon: mockedCategories[index]['icon']);
      },
    );
  }
}

class ItemCategoryFilter extends StatelessWidget {
  const ItemCategoryFilter(
      {super.key,
      this.isSelected = false,
      required this.name,
      required this.icon});

  final String name;
  final Image icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 8,
          ),
          Text(name,
              style: TextStyle(
                  color: isSelected ? AppColors.primaryColor : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> mockedCategories = [
  {'name': 'Zapatillas', 'icon': Image.asset('assets/images/categories/running-shoes.png')},
  {'name': 'Reloj', 'icon': Image.asset('assets/images/categories/wrist-watch.png')},
  {'name': 'Mochilas', 'icon': Image.asset('assets/images/categories/school-bag.png')},
  {'name': 'Authomovil', 'icon': Image.asset('assets/images/categories/car.png')},
  {'name': 'Ropa', 'icon': Image.asset('assets/images/categories/male-clothes.png')},
  {'name': 'Motocicletas', 'icon': Image.asset('assets/images/categories/motorbike.png')},
  {'name': 'Electrodomesticos', 'icon': Image.asset('assets/images/categories/electric-appliance.png')},
];
