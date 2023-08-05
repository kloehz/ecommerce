import 'package:dartz/dartz.dart';
import 'package:ecommerce/modules/home/data/models/get_categories_response/get_categories_response.dart';

abstract class GetCategoriesRepository {
  Future<Either<String, List<GetCategoriesModel>>> getCategories();
}
