import 'dart:convert';

import 'package:dio/dio.dart' hide Headers;

import 'package:retrofit/retrofit.dart';

import '../../common/component/data.dart';
import '../../common/model/cursor_pagination_model.dart';

import '../model/order_model.dart';
import '../model/post_order_body.dart';

part 'order_repository.g.dart';

// http://$ip/order
@RestApi()
abstract class OrderRepository {
  factory OrderRepository(Dio dio, {String baseUrl}) = _OrderRepository;

  @POST('/')
  @Headers({
    'accessToken': 'true',
    'content-type': 'application/json',
  })
  Future<OrderModel> postOrder({
    @Body() required PostOrderBody body,
  });
}
