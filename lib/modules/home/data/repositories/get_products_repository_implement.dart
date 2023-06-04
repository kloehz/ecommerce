import 'package:dartz/dartz.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/data/datasources/get_products_source.dart';
import 'package:ecommerce/modules/home/data/models/get_products_response/get_products_response.dart';
import 'package:ecommerce/modules/home/domain/repositories/get_products_repository.dart';

class GetProductsRepositoryImplement implements GetProductsRepository {
  GetProductsDataSource getProductsDataSource =
      locator.get<GetProductsSourceImplement>();

  @override
  Future<Either<String, List<GetProductsModel>>> getProducts(position) async {
    return await _getProductsCall(position);
  }

  Future<Either<String, List<GetProductsModel>>> _getProductsCall(
      String query) async {
    try {
      final result = await getProductsDataSource.getProducts(query);
      return Right(result);
    } catch (_) {
      return const Left('Ha ocurrido un error, intente de nuevo.');
    }
  }
}
