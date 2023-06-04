// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetProductsModel _$$_GetProductsModelFromJson(Map<String, dynamic> json) =>
    _$_GetProductsModel(
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_GetProductsModelToJson(_$_GetProductsModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'price': instance.price,
    };
