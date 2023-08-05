import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_categories_response.freezed.dart';
part 'get_categories_response.g.dart';

@freezed
class GetCategoriesModel with _$GetCategoriesModel {
  const factory GetCategoriesModel(
      {required String title,
      required String image,
      required int id}) = _GetCategoriesModel;

  factory GetCategoriesModel.fromJson(Map<String, dynamic> json) =>
      GetCategoriesModel(
          title: json['title'], id: json['id'], image: json['image']);
}
