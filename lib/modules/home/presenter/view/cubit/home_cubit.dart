import 'package:bloc/bloc.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/data/models/get_products_response/get_products_response.dart';
import 'package:ecommerce/modules/home/domain/usecases/get_products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  GetProducts getProductsUseCase = locator.get<GetProducts>();
  HomeCubit() : super(const HomeState.loading());

  void getProducts() async {
    final response = await getProductsUseCase.call('zapatillas');
    response.fold((left) {
      emit(const HomeState.failed());
    }, (right) {
      emit(HomeState.success(right));
    });
  }
}
