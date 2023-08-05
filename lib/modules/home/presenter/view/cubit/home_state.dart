part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success(List<GetCategoriesModel> categories) =
      _Success;
  const factory HomeState.failed() = _Failed;
}
