import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/data/models/get_products_response/get_products_response.dart';
import 'package:ecommerce/modules/home/presenter/view/cubit/home_cubit.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_app_bar.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_drawer.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_floating_action_button.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/custom_tab_bar.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/item_category_filter.dart';
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
                    return SuccessWidget(items: items);
                  })),
        );
      },
    );
  }
}

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    super.key,
    required this.items,
  });

  final List<GetProductsModel> items;

  @override
  Widget build(BuildContext context) {
    final width = context.width;

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
  }
}
