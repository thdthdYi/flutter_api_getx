import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;

import 'package:flutter_api_project_getx/common/layout/defaultlayout.dart';

import 'package:flutter_api_project_getx/product/component/product_card.dart';
import 'package:flutter_api_project_getx/product/model/product_model.dart';
import 'package:flutter_api_project_getx/restaurant/component/restaurant_card.dart';
import 'package:flutter_api_project_getx/restaurant/model/restaurant_detail_model.dart';
import 'package:flutter_api_project_getx/restaurant/controller/basket_controller.dart';
import 'package:flutter_api_project_getx/restaurant/controller/restaurant_controller.dart';
import 'package:get/get.dart';

import '../../common/component/color.dart';
import '../model/restaurant_model.dart';

class RestaurantDetailScreen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final item;
  //api 호출 데이터 받아오기
  const RestaurantDetailScreen({required this.item, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final basket = BasketController.to.inBasket.obs;
    // ignore: unnecessary_null_comparison
    if (RestaurantController.to.respDetailData == null) {
      return const DefaultLayout(
          child: Center(
        child: CircularProgressIndicator(),
      ));
    }
    // //데이터 model로 mapping
    // final model = RestaurantDetailModel.fromJson(item);
    return DefaultLayout(
        title: 'Restaurant',
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed('/basket');
          },
          backgroundColor: PRIMARY_COLOR,
          child: Obx(
            () => Badge(
              showBadge: basket.value.isNotEmpty, //장바구니가 비어있을 때
              badgeContent: Text(
                //장바구니 안에 숫자
                basket.value
                    .fold<int>(
                      0,
                      (previous, next) => previous + next.count,
                    )
                    .toString(),
                style: const TextStyle(
                  color: PRIMARY_COLOR,
                  fontSize: 10.0,
                ),
              ),
              badgeColor: Colors.white,
              child: const Icon(
                Icons.shopping_basket_outlined,
              ),
            ),
          ),
        ),
        child: CustomScrollView(
          slivers: [
            rederTop(model: item), //model data 넘겨받기
            renderLabel(),
            renderProducts(products: item.products, restaurant: item),
          ],
        ));
  }

//detail_Screen 상단 위젯
  SliverToBoxAdapter rederTop({
    required RestaurantDetailModel model,
  }) {
    return SliverToBoxAdapter(
      child: RestaurantCard.fromModel(
        //상속 구조 이용해서 detail과 not detail 구별
        model: model,
        isDetail: true,
      ),
    );
  }

  SliverPadding renderLabel() {
    return const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      sliver: SliverToBoxAdapter(
          child: Text(
        '메뉴',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
      )),
    );
  }

//메뉴 위젯
  SliverPadding renderProducts(
      {required RestaurantModel restaurant,
      required List<RestaurantProductModel> products}) {
    return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //products 리스트 길이만큼 List
        sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            final model = products[index];
            return InkWell(
              onTap: () {
                BasketController.to.addToBasket(
                    product: ProductModel(
                        id: model.id,
                        name: model.name,
                        detail: model.detail,
                        imgUrl: model.imgUrl,
                        price: model.price,
                        restaurant: restaurant));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: ProductCard.fromRestaurantProductModel(
                  model: model,
                ),
              ),
            );
          },
          childCount: products.length,
        )));
  }
}

//image: Image.asset('asset/img/food/ddeok_bok_gi.jpg'),
        // name: '떡볶이',
        // tags: ['떡', '치즈'],
        // ratingsCount: 100,
        // deliveryTime: 50,
        // deliveryFee: 1000,
        // ratings: 3,
        // isDetail: true,