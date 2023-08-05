import 'package:dartz/dartz.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/data/models/get_categories_response/get_categories_response.dart';
import 'package:ecommerce/modules/home/data/repositories/get_categories_repository_implement.dart';
import 'package:ecommerce/modules/home/domain/repositories/get_categories_repository.dart';

class GetCategories {
  GetCategoriesRepository home =
      locator.get<GetCategoriesRepositoryImplement>();

  Future<Either<String, List<GetCategoriesModel>>> call() async {
    return await home.getCategories();
  }
}
