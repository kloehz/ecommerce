part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success(List<GetProductsModel> products) = _Success;
  const factory HomeState.failed() = _Failed;
}
