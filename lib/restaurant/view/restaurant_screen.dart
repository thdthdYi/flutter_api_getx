import 'package:flutter/material.dart';

import 'package:flutter_api_project_getx/restaurant/controller/restaurant_controller.dart';
import 'package:flutter_api_project_getx/restaurant/component/restaurant_card.dart';
import 'package:get/get.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Obx(() {
              final controller = RestaurantController.to;
              if (controller.isLoading.value) {
                // 데이터를 가져오는 중인 경우 로딩 화면을 표시
                return CircularProgressIndicator();
              } else if (controller.restaurantList.isEmpty) {
                // 데이터가 없을 때 표시할 화면
                return Text('No data available');
              } else {
                return ListView.separated(
                  itemCount: RestaurantController.to.respData.length,
                  itemBuilder: (_, index) {
                    final pItem = RestaurantController.to.respData[index];
                    return GestureDetector(
                      onTap: () {
                        RestaurantController.to
                            .pagenateRestaurantDetail(pItem.id);
                      },
                      child: RestaurantCard.fromModel(model: pItem),
                    );
                  },
                  separatorBuilder: (_, index) {
                    return const SizedBox(
                      height: 16.0,
                    );
                  },
                );
              }
            })));
  }
}
