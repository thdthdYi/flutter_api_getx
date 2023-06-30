// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantProductModel _$RestaurantProductModelFromJson(
    Map<String, dynamic> json) {
  return _RestaurantProductModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantProductModel {
  String get id => throw _privateConstructorUsedError;
  String get name =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: DataUtils.pathToUrl)
  String get imgUrl => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantProductModelCopyWith<RestaurantProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantProductModelCopyWith<$Res> {
  factory $RestaurantProductModelCopyWith(RestaurantProductModel value,
          $Res Function(RestaurantProductModel) then) =
      _$RestaurantProductModelCopyWithImpl<$Res, RestaurantProductModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: DataUtils.pathToUrl) String imgUrl,
      String detail,
      int price});
}

/// @nodoc
class _$RestaurantProductModelCopyWithImpl<$Res,
        $Val extends RestaurantProductModel>
    implements $RestaurantProductModelCopyWith<$Res> {
  _$RestaurantProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? detail = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantProductModelCopyWith<$Res>
    implements $RestaurantProductModelCopyWith<$Res> {
  factory _$$_RestaurantProductModelCopyWith(_$_RestaurantProductModel value,
          $Res Function(_$_RestaurantProductModel) then) =
      __$$_RestaurantProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: DataUtils.pathToUrl) String imgUrl,
      String detail,
      int price});
}

/// @nodoc
class __$$_RestaurantProductModelCopyWithImpl<$Res>
    extends _$RestaurantProductModelCopyWithImpl<$Res,
        _$_RestaurantProductModel>
    implements _$$_RestaurantProductModelCopyWith<$Res> {
  __$$_RestaurantProductModelCopyWithImpl(_$_RestaurantProductModel _value,
      $Res Function(_$_RestaurantProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? detail = null,
    Object? price = null,
  }) {
    return _then(_$_RestaurantProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_RestaurantProductModel implements _RestaurantProductModel {
  _$_RestaurantProductModel(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: DataUtils.pathToUrl) required this.imgUrl,
      required this.detail,
      required this.price});

  factory _$_RestaurantProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantProductModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
// ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: DataUtils.pathToUrl)
  final String imgUrl;
  @override
  final String detail;
  @override
  final int price;

  @override
  String toString() {
    return 'RestaurantProductModel(id: $id, name: $name, imgUrl: $imgUrl, detail: $detail, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imgUrl, detail, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantProductModelCopyWith<_$_RestaurantProductModel> get copyWith =>
      __$$_RestaurantProductModelCopyWithImpl<_$_RestaurantProductModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantProductModelToJson(
      this,
    );
  }
}

abstract class _RestaurantProductModel implements RestaurantProductModel {
  factory _RestaurantProductModel(
      {required final String id,
      required final String name,
      @JsonKey(fromJson: DataUtils.pathToUrl) required final String imgUrl,
      required final String detail,
      required final int price}) = _$_RestaurantProductModel;

  factory _RestaurantProductModel.fromJson(Map<String, dynamic> json) =
      _$_RestaurantProductModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: DataUtils.pathToUrl)
  String get imgUrl;
  @override
  String get detail;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantProductModelCopyWith<_$_RestaurantProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
