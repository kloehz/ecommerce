// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProductsModel _$GetProductsModelFromJson(Map<String, dynamic> json) {
  return _GetProductsModel.fromJson(json);
}

/// @nodoc
mixin _$GetProductsModel {
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProductsModelCopyWith<GetProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsModelCopyWith<$Res> {
  factory $GetProductsModelCopyWith(
          GetProductsModel value, $Res Function(GetProductsModel) then) =
      _$GetProductsModelCopyWithImpl<$Res, GetProductsModel>;
  @useResult
  $Res call({String title, String thumbnail, double price});
}

/// @nodoc
class _$GetProductsModelCopyWithImpl<$Res, $Val extends GetProductsModel>
    implements $GetProductsModelCopyWith<$Res> {
  _$GetProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnail = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetProductsModelCopyWith<$Res>
    implements $GetProductsModelCopyWith<$Res> {
  factory _$$_GetProductsModelCopyWith(
          _$_GetProductsModel value, $Res Function(_$_GetProductsModel) then) =
      __$$_GetProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String thumbnail, double price});
}

/// @nodoc
class __$$_GetProductsModelCopyWithImpl<$Res>
    extends _$GetProductsModelCopyWithImpl<$Res, _$_GetProductsModel>
    implements _$$_GetProductsModelCopyWith<$Res> {
  __$$_GetProductsModelCopyWithImpl(
      _$_GetProductsModel _value, $Res Function(_$_GetProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnail = null,
    Object? price = null,
  }) {
    return _then(_$_GetProductsModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetProductsModel implements _GetProductsModel {
  const _$_GetProductsModel(
      {required this.title, required this.thumbnail, required this.price});

  factory _$_GetProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetProductsModelFromJson(json);

  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final double price;

  @override
  String toString() {
    return 'GetProductsModel(title: $title, thumbnail: $thumbnail, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductsModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, thumbnail, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductsModelCopyWith<_$_GetProductsModel> get copyWith =>
      __$$_GetProductsModelCopyWithImpl<_$_GetProductsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetProductsModelToJson(
      this,
    );
  }
}

abstract class _GetProductsModel implements GetProductsModel {
  const factory _GetProductsModel(
      {required final String title,
      required final String thumbnail,
      required final double price}) = _$_GetProductsModel;

  factory _GetProductsModel.fromJson(Map<String, dynamic> json) =
      _$_GetProductsModel.fromJson;

  @override
  String get title;
  @override
  String get thumbnail;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_GetProductsModelCopyWith<_$_GetProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
