import 'package:flutter_api_project_getx/restaurant/model/restaurant_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../common/utils/data_utils.dart';

part 'restaurant_detail_model.freezed.dart';
part 'restaurant_detail_model.g.dart';

@JsonSerializable()
class RestaurantDetailModel extends RestaurantModel {
  final String detail;
  final List<RestaurantProductModel> products;

  RestaurantDetailModel(
      {required super.id,
      required super.name,
      required super.thumbUrl,
      required super.tags,
      required super.priceRange,
      required super.ratings,
      required super.ratingsCount,
      required super.deliveryTime,
      required super.deliveryFee,
      required this.detail,
      required this.products});

  factory RestaurantDetailModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDetailModelFromJson(json);
}

@freezed
class RestaurantProductModel with _$RestaurantProductModel {
  @JsonSerializable(explicitToJson: true)
  factory RestaurantProductModel({
    required String id,
    required String name,
    @JsonKey(
      fromJson: DataUtils.pathToUrl,
    )
    required String imgUrl,
    required String detail,
    required int price,
  }) = _RestaurantProductModel;

  factory RestaurantProductModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantProductModelFromJson(json);
}
