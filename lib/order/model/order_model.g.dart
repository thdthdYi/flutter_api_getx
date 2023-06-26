// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      id: json['id'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) =>
              OrderProductAndCountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: json['totalPrice'] as int,
      restaurant:
          RestaurantModel.fromJson(json['restaurant'] as Map<String, dynamic>),
      createdAt: DataUtils.stringToDateTime(json['createdAt'] as String),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'products': instance.products,
      'totalPrice': instance.totalPrice,
      'restaurant': instance.restaurant,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$_OrderProductModel _$$_OrderProductModelFromJson(Map<String, dynamic> json) =>
    _$_OrderProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      detail: json['detail'] as String,
      imgUrl: DataUtils.pathToUrl(json['imgUrl'] as String),
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_OrderProductModelToJson(
        _$_OrderProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'detail': instance.detail,
      'imgUrl': instance.imgUrl,
      'price': instance.price,
    };

_$_OrderProductAndCountModel _$$_OrderProductAndCountModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderProductAndCountModel(
      product:
          OrderProductModel.fromJson(json['product'] as Map<String, dynamic>),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_OrderProductAndCountModelToJson(
        _$_OrderProductAndCountModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'count': instance.count,
    };
