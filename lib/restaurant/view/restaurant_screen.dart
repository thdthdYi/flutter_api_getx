import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_api_project_getx/controller/pagination_controller.dart';
import 'package:flutter_api_project_getx/restaurant/component/restaurant_card.dart';
import 'package:flutter_api_project_getx/restaurant/view/restaurant_detail_screen.dart';
import 'package:get/get.dart';

import '../../common/component/data.dart';
import '../model/restaurant_model.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: ListView.separated(
      itemCount: PaginationController.to.respData.length,
      itemBuilder: (_, index) {
        final item = PaginationController.to.respData[index];
        final pItem = RestaurantModel.fromJson(item);
        return GestureDetector(
          onTap: () {
            Get.to(() => RestaurantDetailScreen());
          },
          child: RestaurantCard.fromModel(model: pItem),
        );
      },
      separatorBuilder: (_, index) {
        return SizedBox(
          height: 16.0,
        );
      },
    )));
  }
}
