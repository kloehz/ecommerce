// import 'package:ecommerce/constants/urls.dart';
// import 'package:ecommerce/injection.dart';
// import 'package:ecommerce/modules/home/data/models/get_categories_response/get_categories_response.dart';
// import 'package:ecommerce/network/dio_client.dart';
// import 'package:flutter/material.dart';

// abstract class GetCategoriesDataSource {
//   /// Call the backend with params
//   ///
//   /// Throws a [String] for all error codes
//   Future<List<GetCategoriesModel>> getCategories();
// }

// class GetCategoriesSourceImplement implements GetCategoriesDataSource {
//   DioClient dioClient = locator.get<DioClient>();

//   // Do the call to the backend or throw Server Expection
//   @override
//   Future<List<GetCategoriesModel>> getCategories() async {
//     try {
//       final dio = locator.get<DioClient>();
//       final response = await dio.instance.get(Endpoints.getCategories);
//       List<dynamic> categories = response.data['data'];
//       final categoriesParsed =
//           categories.map((item) => GetCategoriesModel.fromJson(item)).toList();
//       return categoriesParsed;
//     } catch (e) {
//       debugPrint('Err: $e');
//       rethrow;
//     }
//   }
// }
