import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/data/datasources/get_products_source.dart';
import 'package:ecommerce/modules/home/data/repositories/get_products_repository_implement.dart';
import 'package:ecommerce/modules/home/domain/usecases/get_products.dart';
import 'package:ecommerce/modules/home/presenter/view/cubit/home_cubit.dart';

void registerHomeModule() {
  locator.registerFactory<GetProducts>(() => GetProducts());
  locator.registerFactory<GetProductsRepositoryImplement>(
      () => GetProductsRepositoryImplement());
  locator.registerFactory<GetProductsSourceImplement>(
      () => GetProductsSourceImplement());
  locator.registerSingleton<HomeCubit>(HomeCubit());
}
