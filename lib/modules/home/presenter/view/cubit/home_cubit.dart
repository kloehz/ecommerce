import 'package:bloc/bloc.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/modules/home/data/models/get_categories_response/get_categories_response.dart';
import 'package:ecommerce/modules/home/domain/usecases/get_categories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  GetCategories getCategoriesUseCase = locator.get<GetCategories>();
  HomeCubit() : super(const HomeState.loading());

  void getCategories([String? category]) async {
    emit(const HomeState.loading());
    final response = await getCategoriesUseCase.call();
    response.fold((left) {
      emit(const HomeState.failed());
    }, (right) {
      emit(HomeState.success(right));
    });
  }
}
