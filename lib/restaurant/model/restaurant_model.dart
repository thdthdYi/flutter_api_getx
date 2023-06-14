import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/data_utils.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

enum RestaurantPriceRange { expensive, medium, cheap }

@freezed
class RestaurantModel with _$RestaurantModel {
  factory RestaurantModel({
    required String id,
    required String name,
    @JsonKey(
      fromJson: DataUtils.pathToUrl,
    )
    required String thumbUrl,
    required List<String> tags,
    required RestaurantPriceRange priceRange,
    required double ratings,
    required int ratingsCount,
    required int deliveryTime,
    required int deliveryFee,
  }) = _RestaurantModel;

  //g.dart file code
  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}
