import 'package:dartz/dartz.dart';
import 'package:ecommerce/modules/home/data/models/get_products_response/get_products_response.dart';

abstract class GetProductsRepository {
  Future<Either<String, List<GetProductsModel>>> getProducts(query);
}
