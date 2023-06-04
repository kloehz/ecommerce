import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/modules/home/data/models/get_products_response/get_products_response.dart';
import 'package:ecommerce/utils/shared_utils.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.product});

  final GetProductsModel product;

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
            child: Image.network(product.thumbnail),
          ),
          Text(
            product.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
