import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/presenter/view/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/mocks/categories_mock.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesFilter extends StatelessWidget {
  const CategoriesFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final homeCubit = locator.get<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: homeCubit,
      buildWhen: (_, __) => true,
      builder: (context, state) {
        return ListView.separated(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, __) => const SizedBox(width: 8),
          itemBuilder: (_, index) {
            return ItemCategoryFilter(
                isSelected: homeCubit.categorySelected ==
                    mockedCategories[index]['name'],
                name: mockedCategories[index]['name'],
                icon: mockedCategories[index]['icon']);
          },
        );
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
    final homeCubit = locator.get<HomeCubit>();
    return GestureDetector(
      onTap: () {
        homeCubit.getProducts(name);
      },
      child: Container(
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
      ),
    );
  }
}
