// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_categories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCategoriesModel _$GetCategoriesModelFromJson(Map<String, dynamic> json) {
  return _GetCategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$GetCategoriesModel {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCategoriesModelCopyWith<GetCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoriesModelCopyWith<$Res> {
  factory $GetCategoriesModelCopyWith(
          GetCategoriesModel value, $Res Function(GetCategoriesModel) then) =
      _$GetCategoriesModelCopyWithImpl<$Res, GetCategoriesModel>;
  @useResult
  $Res call({String title, String image, int id});
}

/// @nodoc
class _$GetCategoriesModelCopyWithImpl<$Res, $Val extends GetCategoriesModel>
    implements $GetCategoriesModelCopyWith<$Res> {
  _$GetCategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetCategoriesModelCopyWith<$Res>
    implements $GetCategoriesModelCopyWith<$Res> {
  factory _$$_GetCategoriesModelCopyWith(_$_GetCategoriesModel value,
          $Res Function(_$_GetCategoriesModel) then) =
      __$$_GetCategoriesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String image, int id});
}

/// @nodoc
class __$$_GetCategoriesModelCopyWithImpl<$Res>
    extends _$GetCategoriesModelCopyWithImpl<$Res, _$_GetCategoriesModel>
    implements _$$_GetCategoriesModelCopyWith<$Res> {
  __$$_GetCategoriesModelCopyWithImpl(
      _$_GetCategoriesModel _value, $Res Function(_$_GetCategoriesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_$_GetCategoriesModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCategoriesModel implements _GetCategoriesModel {
  const _$_GetCategoriesModel(
      {required this.title, required this.image, required this.id});

  factory _$_GetCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetCategoriesModelFromJson(json);

  @override
  final String title;
  @override
  final String image;
  @override
  final int id;

  @override
  String toString() {
    return 'GetCategoriesModel(title: $title, image: $image, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCategoriesModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCategoriesModelCopyWith<_$_GetCategoriesModel> get copyWith =>
      __$$_GetCategoriesModelCopyWithImpl<_$_GetCategoriesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCategoriesModelToJson(
      this,
    );
  }
}

abstract class _GetCategoriesModel implements GetCategoriesModel {
  const factory _GetCategoriesModel(
      {required final String title,
      required final String image,
      required final int id}) = _$_GetCategoriesModel;

  factory _GetCategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_GetCategoriesModel.fromJson;

  @override
  String get title;
  @override
  String get image;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_GetCategoriesModelCopyWith<_$_GetCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
