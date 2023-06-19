import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_api_project_getx/common/layout/defaultlayout.dart';
import 'package:flutter_api_project_getx/controller/pagination_controller.dart';
import 'package:flutter_api_project_getx/product/component/product_card.dart';
import 'package:flutter_api_project_getx/restaurant/component/restaurant_card.dart';
import 'package:flutter_api_project_getx/restaurant/model/restaurant_detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final item;
  //api 호출 데이터 받아오기
  const RestaurantDetailScreen({required this.item, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // //데이터 model로 mapping
    // final model = RestaurantDetailModel.fromJson(item);
    return DefaultLayout(
        title: 'Restaurant',
        child: CustomScrollView(
          slivers: [
            rederTop(model: item), //model data 넘겨받기
            renderLabel(),
            renderProducts(products: item.products),
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
      {required List<RestaurantProductModel> products}) {
    return SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        //products 리스트 길이만큼 List
        sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            final model = products[index];
            return Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ProductCard.fromModel(
                model: model,
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