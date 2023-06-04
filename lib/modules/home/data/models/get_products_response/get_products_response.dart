import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_products_response.freezed.dart';
part 'get_products_response.g.dart';

@freezed
class GetProductsModel with _$GetProductsModel {
  const factory GetProductsModel(
      {required String title,
      required String thumbnail,
      required double price}) = _GetProductsModel;

  factory GetProductsModel.fromJson(Map<String, dynamic> json) =>
      GetProductsModel(
          title: json['title'],
          thumbnail: json['thumbnail'],
          price: json['price'].toDouble());
}
