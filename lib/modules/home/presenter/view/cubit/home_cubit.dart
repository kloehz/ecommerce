import 'package:bloc/bloc.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/data/models/get_products_response/get_products_response.dart';
import 'package:ecommerce/modules/home/domain/usecases/get_products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  GetProducts getProductsUseCase = locator.get<GetProducts>();
  String? categorySelected;
  HomeCubit() : super(const HomeState.loading());

  void getProducts([String? category]) async {
    emit(const HomeState.loading());
    final getCategory = category ?? 'Zapatillas';
    categorySelected = getCategory;
    final response = await getProductsUseCase.call(getCategory);
    response.fold((left) {
      emit(const HomeState.failed());
    }, (right) {
      emit(HomeState.success(right));
    });
  }
}
