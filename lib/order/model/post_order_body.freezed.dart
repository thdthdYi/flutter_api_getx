// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_order_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostOrderBody _$PostOrderBodyFromJson(Map<String, dynamic> json) {
  return _PostOrderBody.fromJson(json);
}

/// @nodoc
mixin _$PostOrderBody {
  String get id => throw _privateConstructorUsedError;
  List<PostOrderBodyProduct> get products => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostOrderBodyCopyWith<PostOrderBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostOrderBodyCopyWith<$Res> {
  factory $PostOrderBodyCopyWith(
          PostOrderBody value, $Res Function(PostOrderBody) then) =
      _$PostOrderBodyCopyWithImpl<$Res, PostOrderBody>;
  @useResult
  $Res call(
      {String id,
      List<PostOrderBodyProduct> products,
      int totalPrice,
      String createdAt});
}

/// @nodoc
class _$PostOrderBodyCopyWithImpl<$Res, $Val extends PostOrderBody>
    implements $PostOrderBodyCopyWith<$Res> {
  _$PostOrderBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? products = null,
    Object? totalPrice = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PostOrderBodyProduct>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostOrderBodyCopyWith<$Res>
    implements $PostOrderBodyCopyWith<$Res> {
  factory _$$_PostOrderBodyCopyWith(
          _$_PostOrderBody value, $Res Function(_$_PostOrderBody) then) =
      __$$_PostOrderBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<PostOrderBodyProduct> products,
      int totalPrice,
      String createdAt});
}

/// @nodoc
class __$$_PostOrderBodyCopyWithImpl<$Res>
    extends _$PostOrderBodyCopyWithImpl<$Res, _$_PostOrderBody>
    implements _$$_PostOrderBodyCopyWith<$Res> {
  __$$_PostOrderBodyCopyWithImpl(
      _$_PostOrderBody _value, $Res Function(_$_PostOrderBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? products = null,
    Object? totalPrice = null,
    Object? createdAt = null,
  }) {
    return _then(_$_PostOrderBody(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PostOrderBodyProduct>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostOrderBody implements _PostOrderBody {
  _$_PostOrderBody(
      {required this.id,
      required final List<PostOrderBodyProduct> products,
      required this.totalPrice,
      required this.createdAt})
      : _products = products;

  factory _$_PostOrderBody.fromJson(Map<String, dynamic> json) =>
      _$$_PostOrderBodyFromJson(json);

  @override
  final String id;
  final List<PostOrderBodyProduct> _products;
  @override
  List<PostOrderBodyProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int totalPrice;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'PostOrderBody(id: $id, products: $products, totalPrice: $totalPrice, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostOrderBody &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_products), totalPrice, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostOrderBodyCopyWith<_$_PostOrderBody> get copyWith =>
      __$$_PostOrderBodyCopyWithImpl<_$_PostOrderBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostOrderBodyToJson(
      this,
    );
  }
}

abstract class _PostOrderBody implements PostOrderBody {
  factory _PostOrderBody(
      {required final String id,
      required final List<PostOrderBodyProduct> products,
      required final int totalPrice,
      required final String createdAt}) = _$_PostOrderBody;

  factory _PostOrderBody.fromJson(Map<String, dynamic> json) =
      _$_PostOrderBody.fromJson;

  @override
  String get id;
  @override
  List<PostOrderBodyProduct> get products;
  @override
  int get totalPrice;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_PostOrderBodyCopyWith<_$_PostOrderBody> get copyWith =>
      throw _privateConstructorUsedError;
}
