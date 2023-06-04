import 'package:ecommerce/constants/urls.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/data/models/get_products_response/get_products_response.dart';
import 'package:ecommerce/network/dio_client.dart';
import 'package:flutter/material.dart';

abstract class GetProductsDataSource {
  /// Call the backend with params
  ///
  /// Throws a [String] for all error codes
  Future<List<GetProductsModel>> getProducts(String position);
}

class GetProductsSourceImplement implements GetProductsDataSource {
  DioClient dioClient = locator.get<DioClient>();

  // Do the call to the backend or throw Server Expection
  @override
  Future<List<GetProductsModel>> getProducts(String query) async {
    try {
      final dio = locator.get<DioClient>();
      final response = await dio.instance.get('${Endpoints.search}$query');
      List<dynamic> products = response.data['results'];
      final productsParsed =
          products.map((item) => GetProductsModel.fromJson(item)).toList();
      return productsParsed;
    } catch (e) {
      debugPrint('Err: $e');
      rethrow;
    }
  }
}
