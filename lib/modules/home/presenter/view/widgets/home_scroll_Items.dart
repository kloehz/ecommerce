import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/presenter/view/cubit/home_cubit.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/carousel.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/category_widget.dart';
import 'package:ecommerce/utils/shared_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScrollItems extends StatelessWidget {
  const HomeScrollItems({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = locator.get<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: homeCubit,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 80.0),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: CarouselWidget()),
              state.when(
                  loading: () {
                    homeCubit.getCategories();
                    return const SliverFillRemaining(
                        child: Center(child: CircularProgressIndicator()));
                  },
                  failed: () => const SliverFillRemaining(
                        child: Center(
                            child: Text(
                                'Ha ocurrido un error, intente nuevamente')),
                      ),
                  success: (items) {
                    return SliverPadding(
                      padding:
                          const EdgeInsets.only(left: 12, right: 12, top: 16),
                      sliver: SliverGrid.builder(
                        itemCount: items.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height * 0.8),
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return CategoryWidget(category: items[index]);
                        },
                      ),
                    );
                  })
            ],
          ),
        );
      },
    );
  }
}
