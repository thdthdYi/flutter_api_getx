import 'package:flutter_api_project_getx/restaurant/model/basket_item_model.dart';
import 'package:flutter_api_project_getx/user/model/patch_basket_body.dart';
import 'package:flutter_api_project_getx/user/repository/user_repository.dart';
import 'package:get/get.dart';

import '../../common/component/data.dart';
import '../../product/model/product_model.dart';
import '../../user/controller/login_controller.dart';

class BasketController extends GetxController {
  static BasketController get to => Get.find<BasketController>();

  final dio = LoginController.to.dio;
  RxList<BasketItemModel> inBasket = RxList<BasketItemModel>();

  Future<void> patchBasket() async {
    await UserRepository(dio, baseUrl: 'http://$ip/user/me').patchBasket(
        body: PatchBasketBody(
            basket: inBasket
                .map((e) => PatchBasketBodyBasket(
                    productId: e.product.id, count: e.count))
                .toList()));
  }

  Future<void> addToBasket({
    required ProductModel product,
  }) async {
    /*
  1. 장바구니에 해당하는 상품이 없다면 상품 추가
  2. 만약 이미 있다면 장바구니 있는 값에 +1
  */

    //상품이 장바구니에 담겨있는지 먼저 확인

    final exists =
        inBasket.firstWhereOrNull((e) => e.product.id == product.id) != null;

    if (exists) {
      inBasket.value = inBasket
          .map(
            (e) => e.product.id == product.id
                ? e.copyWith(
                    count: e.count + 1,
                  )
                : e,
          )
          .toList();
    } else {
      inBasket.value = [
        ...inBasket,
        BasketItemModel(product: product, count: 1)
      ];
    }
    update();
  }

  //장바구니에서 삭제 했을 때 로직

  Future<void> removeFromBasket({
    required ProductModel product,
    // true면 count와 관계없이 아예 삭제한다.
    bool isDelete = false,
  }) async {
    // 1) 장바구니에 상품이 존재할때
    //    1) 상품의 카운트가 1보다 크면 -1한다.
    //    2) 상품의 카운트가 1이면 삭제한다.
    // 2) 상품이 존재하지 않을때
    //    즉시 함수를 반환하고 아무것도 하지 않는다.

    final exists =
        inBasket.value.firstWhereOrNull((e) => e.product.id == product.id) !=
            null;

    if (!exists) {
      return;
    }

//이미 존재하는 것을 확인했으므로 에러가 날 일이 없음.
    final existingProduct =
        inBasket.firstWhere((e) => e.product.id == product.id);

    if (existingProduct.count == 1 || isDelete) {
      inBasket.value = inBasket.value
          .where(
            (e) => e.product.id != product.id,
          )
          .toList();
    } else {
      inBasket.value = inBasket.value
          .map(
            (e) => e.product.id == product.id
                ? e.copyWith(
                    count: e.count - 1,
                  )
                : e,
          )
          .toList();
    }
    update();
  }
}
