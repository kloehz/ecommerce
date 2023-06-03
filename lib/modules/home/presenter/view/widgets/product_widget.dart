import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/utils/shared_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = context.width;
    return Container(
      width: width * 0.46,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[100],
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      child: Text(
                        '30%',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ))),
              const Icon(
                Icons.favorite,
                color: Colors.grey,
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                // color: Colors.cyanAccent,
                // shape: BoxShape.circle,
                ),
            child: Image.network(
              'http://http2.mlstatic.com/D_600566-MLA49116870493_022022-I.jpg',
            ),
          ),
          const Text(
            'Nueva zapatilla text largo largo',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              '\$18.000,00',
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          RatingStars(
            starBuilder: (_, __) {
              return const Icon(Icons.star);
            },
            maxValueVisibility: false,
            valueLabelVisibility: false,
          )
        ],
      ),
    );
  }
}
