// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) {
  return _RestaurantModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: DataUtils.pathToUrl)
  String get thumbUrl => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  RestaurantPriceRange get priceRange => throw _privateConstructorUsedError;
  double get ratings => throw _privateConstructorUsedError;
  int get ratingsCount => throw _privateConstructorUsedError;
  int get deliveryTime => throw _privateConstructorUsedError;
  int get deliveryFee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantModelCopyWith<RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantModelCopyWith<$Res> {
  factory $RestaurantModelCopyWith(
          RestaurantModel value, $Res Function(RestaurantModel) then) =
      _$RestaurantModelCopyWithImpl<$Res, RestaurantModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: DataUtils.pathToUrl) String thumbUrl,
      List<String> tags,
      RestaurantPriceRange priceRange,
      double ratings,
      int ratingsCount,
      int deliveryTime,
      int deliveryFee});
}

/// @nodoc
class _$RestaurantModelCopyWithImpl<$Res, $Val extends RestaurantModel>
    implements $RestaurantModelCopyWith<$Res> {
  _$RestaurantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbUrl = null,
    Object? tags = null,
    Object? priceRange = null,
    Object? ratings = null,
    Object? ratingsCount = null,
    Object? deliveryTime = null,
    Object? deliveryFee = null,
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
      thumbUrl: null == thumbUrl
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RestaurantPriceRange,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as double,
      ratingsCount: null == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantModelCopyWith<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  factory _$$_RestaurantModelCopyWith(
          _$_RestaurantModel value, $Res Function(_$_RestaurantModel) then) =
      __$$_RestaurantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: DataUtils.pathToUrl) String thumbUrl,
      List<String> tags,
      RestaurantPriceRange priceRange,
      double ratings,
      int ratingsCount,
      int deliveryTime,
      int deliveryFee});
}

/// @nodoc
class __$$_RestaurantModelCopyWithImpl<$Res>
    extends _$RestaurantModelCopyWithImpl<$Res, _$_RestaurantModel>
    implements _$$_RestaurantModelCopyWith<$Res> {
  __$$_RestaurantModelCopyWithImpl(
      _$_RestaurantModel _value, $Res Function(_$_RestaurantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbUrl = null,
    Object? tags = null,
    Object? priceRange = null,
    Object? ratings = null,
    Object? ratingsCount = null,
    Object? deliveryTime = null,
    Object? deliveryFee = null,
  }) {
    return _then(_$_RestaurantModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbUrl: null == thumbUrl
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RestaurantPriceRange,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as double,
      ratingsCount: null == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantModel implements _RestaurantModel {
  _$_RestaurantModel(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: DataUtils.pathToUrl) required this.thumbUrl,
      required final List<String> tags,
      required this.priceRange,
      required this.ratings,
      required this.ratingsCount,
      required this.deliveryTime,
      required this.deliveryFee})
      : _tags = tags;

  factory _$_RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: DataUtils.pathToUrl)
  final String thumbUrl;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final RestaurantPriceRange priceRange;
  @override
  final double ratings;
  @override
  final int ratingsCount;
  @override
  final int deliveryTime;
  @override
  final int deliveryFee;

  @override
  String toString() {
    return 'RestaurantModel(id: $id, name: $name, thumbUrl: $thumbUrl, tags: $tags, priceRange: $priceRange, ratings: $ratings, ratingsCount: $ratingsCount, deliveryTime: $deliveryTime, deliveryFee: $deliveryFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbUrl, thumbUrl) ||
                other.thumbUrl == thumbUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.ratingsCount, ratingsCount) ||
                other.ratingsCount == ratingsCount) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      thumbUrl,
      const DeepCollectionEquality().hash(_tags),
      priceRange,
      ratings,
      ratingsCount,
      deliveryTime,
      deliveryFee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantModelCopyWith<_$_RestaurantModel> get copyWith =>
      __$$_RestaurantModelCopyWithImpl<_$_RestaurantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantModelToJson(
      this,
    );
  }
}

abstract class _RestaurantModel implements RestaurantModel {
  factory _RestaurantModel(
      {required final String id,
      required final String name,
      @JsonKey(fromJson: DataUtils.pathToUrl) required final String thumbUrl,
      required final List<String> tags,
      required final RestaurantPriceRange priceRange,
      required final double ratings,
      required final int ratingsCount,
      required final int deliveryTime,
      required final int deliveryFee}) = _$_RestaurantModel;

  factory _RestaurantModel.fromJson(Map<String, dynamic> json) =
      _$_RestaurantModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(fromJson: DataUtils.pathToUrl)
  String get thumbUrl;
  @override
  List<String> get tags;
  @override
  RestaurantPriceRange get priceRange;
  @override
  double get ratings;
  @override
  int get ratingsCount;
  @override
  int get deliveryTime;
  @override
  int get deliveryFee;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantModelCopyWith<_$_RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
