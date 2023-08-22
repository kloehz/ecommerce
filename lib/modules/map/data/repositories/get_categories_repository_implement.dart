// import 'package:dartz/dartz.dart';
// import 'package:ecommerce/injection.dart';
// import 'package:ecommerce/modules/home/data/datasources/get_categories_source.dart';
// import 'package:ecommerce/modules/home/data/models/get_categories_response/get_categories_response.dart';
// import 'package:ecommerce/modules/home/domain/repositories/get_categories_repository.dart';

// class GetCategoriesRepositoryImplement implements GetCategoriesRepository {
//   GetCategoriesDataSource getCategoriesDataSource =
//       locator.get<GetCategoriesSourceImplement>();

//   @override
//   Future<Either<String, List<GetCategoriesModel>>> getCategories() async {
//     return await _getCategoriesCall();
//   }

//   Future<Either<String, List<GetCategoriesModel>>> _getCategoriesCall() async {
//     try {
//       final result = await getCategoriesDataSource.getCategories();
//       return Right(result);
//     } catch (_) {
//       return const Left('Ha ocurrido un error, intente de nuevo.');
//     }
//   }
// }
