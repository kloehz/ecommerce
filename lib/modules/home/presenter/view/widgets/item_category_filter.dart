

import 'package:ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/mocks/categories_mock.dart';

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