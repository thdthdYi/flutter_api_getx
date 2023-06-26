// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderProductModel _$OrderProductModelFromJson(Map<String, dynamic> json) {
  return _OrderProductModel.fromJson(json);
}

/// @nodoc
mixin _$OrderProductModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  @JsonKey(fromJson: DataUtils.pathToUrl)
  String get imgUrl => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderProductModelCopyWith<OrderProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductModelCopyWith<$Res> {
  factory $OrderProductModelCopyWith(
          OrderProductModel value, $Res Function(OrderProductModel) then) =
      _$OrderProductModelCopyWithImpl<$Res, OrderProductModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String detail,
      @JsonKey(fromJson: DataUtils.pathToUrl) String imgUrl,
      int price});
}

/// @nodoc
class _$OrderProductModelCopyWithImpl<$Res, $Val extends OrderProductModel>
    implements $OrderProductModelCopyWith<$Res> {
  _$OrderProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? detail = null,
    Object? imgUrl = null,
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
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderProductModelCopyWith<$Res>
    implements $OrderProductModelCopyWith<$Res> {
  factory _$$_OrderProductModelCopyWith(_$_OrderProductModel value,
          $Res Function(_$_OrderProductModel) then) =
      __$$_OrderProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String detail,
      @JsonKey(fromJson: DataUtils.pathToUrl) String imgUrl,
      int price});
}

/// @nodoc
class __$$_OrderProductModelCopyWithImpl<$Res>
    extends _$OrderProductModelCopyWithImpl<$Res, _$_OrderProductModel>
    implements _$$_OrderProductModelCopyWith<$Res> {
  __$$_OrderProductModelCopyWithImpl(
      _$_OrderProductModel _value, $Res Function(_$_OrderProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? detail = null,
    Object? imgUrl = null,
    Object? price = null,
  }) {
    return _then(_$_OrderProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderProductModel implements _OrderProductModel {
  _$_OrderProductModel(
      {required this.id,
      required this.name,
      required this.detail,
      @JsonKey(fromJson: DataUtils.pathToUrl) required this.imgUrl,
      required this.price});

  factory _$_OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderProductModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String detail;
  @override
  @JsonKey(fromJson: DataUtils.pathToUrl)
  final String imgUrl;
  @override
  final int price;

  @override
  String toString() {
    return 'OrderProductModel(id: $id, name: $name, detail: $detail, imgUrl: $imgUrl, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, detail, imgUrl, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderProductModelCopyWith<_$_OrderProductModel> get copyWith =>
      __$$_OrderProductModelCopyWithImpl<_$_OrderProductModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderProductModelToJson(
      this,
    );
  }
}

abstract class _OrderProductModel implements OrderProductModel {
  factory _OrderProductModel(
      {required final String id,
      required final String name,
      required final String detail,
      @JsonKey(fromJson: DataUtils.pathToUrl) required final String imgUrl,
      required final int price}) = _$_OrderProductModel;

  factory _OrderProductModel.fromJson(Map<String, dynamic> json) =
      _$_OrderProductModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get detail;
  @override
  @JsonKey(fromJson: DataUtils.pathToUrl)
  String get imgUrl;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_OrderProductModelCopyWith<_$_OrderProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderProductAndCountModel _$OrderProductAndCountModelFromJson(
    Map<String, dynamic> json) {
  return _OrderProductAndCountModel.fromJson(json);
}

/// @nodoc
mixin _$OrderProductAndCountModel {
  OrderProductModel get product => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderProductAndCountModelCopyWith<OrderProductAndCountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductAndCountModelCopyWith<$Res> {
  factory $OrderProductAndCountModelCopyWith(OrderProductAndCountModel value,
          $Res Function(OrderProductAndCountModel) then) =
      _$OrderProductAndCountModelCopyWithImpl<$Res, OrderProductAndCountModel>;
  @useResult
  $Res call({OrderProductModel product, int count});

  $OrderProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderProductAndCountModelCopyWithImpl<$Res,
        $Val extends OrderProductAndCountModel>
    implements $OrderProductAndCountModelCopyWith<$Res> {
  _$OrderProductAndCountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as OrderProductModel,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderProductModelCopyWith<$Res> get product {
    return $OrderProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderProductAndCountModelCopyWith<$Res>
    implements $OrderProductAndCountModelCopyWith<$Res> {
  factory _$$_OrderProductAndCountModelCopyWith(
          _$_OrderProductAndCountModel value,
          $Res Function(_$_OrderProductAndCountModel) then) =
      __$$_OrderProductAndCountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderProductModel product, int count});

  @override
  $OrderProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_OrderProductAndCountModelCopyWithImpl<$Res>
    extends _$OrderProductAndCountModelCopyWithImpl<$Res,
        _$_OrderProductAndCountModel>
    implements _$$_OrderProductAndCountModelCopyWith<$Res> {
  __$$_OrderProductAndCountModelCopyWithImpl(
      _$_OrderProductAndCountModel _value,
      $Res Function(_$_OrderProductAndCountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? count = null,
  }) {
    return _then(_$_OrderProductAndCountModel(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as OrderProductModel,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderProductAndCountModel implements _OrderProductAndCountModel {
  _$_OrderProductAndCountModel({required this.product, required this.count});

  factory _$_OrderProductAndCountModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderProductAndCountModelFromJson(json);

  @override
  final OrderProductModel product;
  @override
  final int count;

  @override
  String toString() {
    return 'OrderProductAndCountModel(product: $product, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderProductAndCountModel &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderProductAndCountModelCopyWith<_$_OrderProductAndCountModel>
      get copyWith => __$$_OrderProductAndCountModelCopyWithImpl<
          _$_OrderProductAndCountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderProductAndCountModelToJson(
      this,
    );
  }
}

abstract class _OrderProductAndCountModel implements OrderProductAndCountModel {
  factory _OrderProductAndCountModel(
      {required final OrderProductModel product,
      required final int count}) = _$_OrderProductAndCountModel;

  factory _OrderProductAndCountModel.fromJson(Map<String, dynamic> json) =
      _$_OrderProductAndCountModel.fromJson;

  @override
  OrderProductModel get product;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_OrderProductAndCountModelCopyWith<_$_OrderProductAndCountModel>
      get copyWith => throw _privateConstructorUsedError;
}
