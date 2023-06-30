import 'package:flutter/foundation.dart';
import 'package:flutter_api_project_getx/order/model/post_order_body.dart';
import 'package:flutter_api_project_getx/order/repository/order_repository.dart';
import 'package:flutter_api_project_getx/restaurant/controller/basket_controller.dart';
import 'package:flutter_api_project_getx/user/controller/login_controller.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../../common/component/data.dart';

class OrderController extends GetxController {
  static OrderController get to => Get.find<OrderController>();
  Future<bool> postOrder() async {
    try {
      final uuid = Uuid();
      final id = uuid.v4();
      final state = BasketController.to.inBasket.value;
      final dio = LoginController.to.dio;

      final resp = await OrderRepository(dio, baseUrl: 'http://$ip/order')
          .postOrder(
              body: PostOrderBody(
                  id: id,
                  products: state
                      .map((e) => PostOrderBodyProduct(
                          productId: e.product.id, count: e.count))
                      .toList(),
                  totalPrice:
                      state.fold(0, (p, n) => p + (n.count * n.product.price)),
                  createdAt: DateTime.now().toString()));

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
