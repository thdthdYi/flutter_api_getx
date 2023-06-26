import 'package:flutter/material.dart';

import 'package:flutter_api_project_getx/user/controller/pagination_controller.dart';
import 'package:flutter_api_project_getx/restaurant/component/restaurant_card.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.separated(
        itemCount: PaginationController.to.respData.length,
        itemBuilder: (_, index) {
          final pItem = PaginationController.to.respData[index];
          return GestureDetector(
            onTap: () {
              PaginationController.to.pagenateRestaurantDetail(pItem.id);
            },
            child: RestaurantCard.fromModel(model: pItem),
          );
        },
        separatorBuilder: (_, index) {
          return const SizedBox(
            height: 16.0,
          );
        },
      ),
    ));
  }
}
