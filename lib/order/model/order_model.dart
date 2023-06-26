import 'package:flutter_api_project_getx/common/model/model_with_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/data_utils.dart';
import '../../restaurant/model/restaurant_model.dart';

part 'order_model.g.dart';
part 'order_model.freezed.dart';

@freezed
class OrderProductModel with _$OrderProductModel {
  factory OrderProductModel({
    required String id,
    required String name,
    required String detail,
    // ignore: invalid_annotation_target
    @JsonKey(
      fromJson: DataUtils.pathToUrl,
    )
    required String imgUrl,
    required int price,
  }) = _OrderProductModel;

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductModelFromJson(json);
}

@freezed
class OrderProductAndCountModel with _$OrderProductAndCountModel {
  factory OrderProductAndCountModel({
    required OrderProductModel product,
    required int count,
  }) = _OrderProductAndCountModel;

  factory OrderProductAndCountModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductAndCountModelFromJson(json);
}

@JsonSerializable()
class OrderModel implements IModelWithId {
  final String id;
  final List<OrderProductAndCountModel> products;
  final int totalPrice;
  final RestaurantModel restaurant;
  @JsonKey(
    fromJson: DataUtils.stringToDateTime,
  )
  final DateTime createdAt;

  OrderModel({
    required this.id,
    required this.products,
    required this.totalPrice,
    required this.restaurant,
    required this.createdAt,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
