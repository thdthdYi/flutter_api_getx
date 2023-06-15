import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_api_project_getx/common/layout/defaultlayout.dart';
import 'package:flutter_api_project_getx/controller/pagination_controller.dart';
import 'package:flutter_api_project_getx/product/component/product_card.dart';
import 'package:flutter_api_project_getx/restaurant/component/restaurant_card.dart';
import 'package:flutter_api_project_getx/restaurant/model/restaurant_detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class RestaurantDetailScreen extends StatelessWidget {
  const RestaurantDetailScreen({required this.item, Key? key})
      : super(key: key);

  final item;

  @override
  Widget build(BuildContext context) {
    final model = RestaurantDetailModel.fromJson(item);
    return DefaultLayout(
        title: 'Restaurant',
        child: CustomScrollView(
          slivers: [
            rederTop(model: model),
            renderLabel(),
            renderProducts(),
          ],
        ));
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

  SliverPadding renderProducts() {
    return SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        sliver:
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(),
          );
        })));
  }

  SliverToBoxAdapter rederTop({
    required RestaurantDetailModel model,
  }) {
    return SliverToBoxAdapter(
      child: RestaurantCard.fromModel(
        model: model,
        isDetail: true,
      ),
    );
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