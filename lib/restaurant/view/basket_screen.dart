import 'package:flutter/material.dart';
import 'package:flutter_api_project_getx/common/layout/defaultlayout.dart';
import 'package:flutter_api_project_getx/order/view/order_done_screen.dart';
import 'package:flutter_api_project_getx/restaurant/controller/basket_controller.dart';
import 'package:get/get.dart';

import '../../common/component/color.dart';
import '../../order/controller/order_controller.dart';
import '../../order/view/order_screen.dart';
import '../../product/component/product_card.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final basket = BasketController.to.inBasket.obs;
    if (basket.value.isEmpty) {
      return const DefaultLayout(
          child: Center(
        child: Text(
          '장바구니가 비어있습니다.',
          textAlign: TextAlign.center,
        ),
      ));
    }
    // final productsTotal = RxInt(0); // 반응형 변수로 변경

    // // 반응형 변수 업데이트 함수
    // void updateProductsTotal() {
    //   productsTotal.value = basket.value.fold<int>(
    //     0,
    //     (p, n) => p + (n.product.price * n.count),
    //   );
    // }

    final deliveryFee = basket.value.first.product.restaurant.deliveryFee;

    return DefaultLayout(
        title: '장바구니',
        child: SafeArea(
          child: Obx(
            () => Column(
              children: [
                Expanded(
                    child: ListView.separated(
                  separatorBuilder: (_, index) {
                    return const Divider(height: 32.0);
                  },
                  itemBuilder: (_, index) {
                    final model = basket.value[index];

                    return ProductCard.fromProductModel(
                      model: model.product,
                      onAdd: () {
                        BasketController.to.addToBasket(
                          product: model.product,
                        );
                        //updateProductsTotal();
                      },
                      onSubtract: () {
                        BasketController.to.removeFromBasket(
                          product: model.product,
                        );
                        //updateProductsTotal();
                      },
                    );
                  },
                  itemCount: basket.value.length,
                )),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '장바구니 금액',
                          style: TextStyle(
                            color: BODY_TEXT_COLOR,
                          ),
                        ),
                        Text(
                          '₩${BasketController.to.productsTotal.value}',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '배달비',
                          style: TextStyle(
                            color: BODY_TEXT_COLOR,
                          ),
                        ),
                        if (basket.value.isNotEmpty)
                          Text(
                            '₩$deliveryFee',
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '총액',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '₩${deliveryFee + BasketController.to.productsTotal.value}',
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final resp = await OrderController.to.postOrder();

                          if (resp) {
                            Get.to(const OrderDoneScreen());
                          } else {
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('결제 실패!')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: PRIMARY_COLOR,
                        ),
                        child: const Text(
                          '결제하기',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
