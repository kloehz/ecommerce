import 'package:dartz/dartz.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/data/models/get_products_response/get_products_response.dart';
import 'package:ecommerce/modules/home/data/repositories/get_products_repository_implement.dart';
import 'package:ecommerce/modules/home/domain/repositories/get_products_repository.dart';

class GetProducts {
  GetProductsRepository home = locator.get<GetProductsRepositoryImplement>();

  Future<Either<String, List<GetProductsModel>>> call(String query) async {
    return await home.getProducts(query);
  }
}
