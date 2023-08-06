import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/modules/home/data/models/get_categories_response/get_categories_response.dart';
import 'package:ecommerce/modules/home/presenter/view/widgets/parallax_effect.dart';
import 'package:ecommerce/utils/shared_utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final oCcy = NumberFormat("#,##0.00", "es_AR");

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});

  final GetCategoriesModel category;

  @override
  Widget build(BuildContext context) {
    final width = context.width;
    return Container(
        width: width * 0.46,
        // padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: ParallaxEffectWidget(
          country: 'Pergamino',
          title: category.title,
          imageUrl: category.image,
        )
        // child: Column(
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Container(
        //             decoration: BoxDecoration(
        //                 color: Colors.lightBlue[100],
        //                 borderRadius: BorderRadius.circular(12)),
        //             child: const Padding(
        //                 padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        //                 child: Text(
        //                   '30%',
        //                   style: TextStyle(fontWeight: FontWeight.w800),
        //                 ))),
        //         const Icon(
        //           Icons.favorite,
        //           color: Colors.grey,
        //         )
        //       ],
        //     ),
        //     Expanded(
        //       child: Container(
        //         padding: const EdgeInsets.all(20),
        //         child: Image.network(
        //           category.image,
        //           fit: BoxFit.contain,
        //         ),
        //       ),
        //     ),
        //     Text(
        //       category.title,
        //       maxLines: 1,
        //       overflow: TextOverflow.ellipsis,
        //       style: const TextStyle(
        //           color: AppColors.primaryColor,
        //           fontWeight: FontWeight.w500,
        //           fontSize: 18),
        //     ),
        //     const ReviewStars()
        //   ],
        // ),
        );
  }
}

class ReviewStars extends StatelessWidget {
  const ReviewStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star_border_outlined,
        ),
        Icon(
          Icons.star_border_outlined,
        ),
        Icon(
          Icons.star_border_outlined,
        ),
        Icon(
          Icons.star_border_outlined,
        ),
        Icon(
          Icons.star_border_outlined,
        ),
      ],
    );
  }
}
