import 'package:flutter/material.dart';
import 'package:flutter_api_project_getx/restaurant/view/basket_screen.dart';
import 'package:get/get.dart';

import '../../user/controller/root_tab_controller.dart';
import '../../restaurant/view/restaurant_screen.dart';
import '../component/color.dart';
import '../layout/defaultlayout.dart';

class RootTab extends GetView<BottomTabsController> {
  RootTab({Key? key}) : super(key: key);

  final List<Widget> tabPages = [
    const RestaurantScreen(),
    const BasketScreen(),
    const RestaurantScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      // title: 'Looking Restaurants',

      // ignore: sort_child_properties_last
      child: SafeArea(
        child: Obx(() => tabPages[BottomTabsController.to.selectedIndex.value]),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: PRIMARY_COLOR,
          unselectedItemColor: BODY_TEXT_COLOR,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            BottomTabsController.to.changeIndex(index);
          },
          //현재 인덱스 저장
          currentIndex: controller.selectedIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: controller.selectedIndex.value == 0
                  ? const Icon(
                      Icons.home_outlined,
                      color: PRIMARY_COLOR,
                    )
                  : const Icon(Icons.home_outlined, color: BODY_TEXT_COLOR),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: controller.selectedIndex.value == 1
                  ? const Icon(
                      Icons.shopping_cart,
                      color: PRIMARY_COLOR,
                    )
                  : const Icon(Icons.shopping_cart, color: BODY_TEXT_COLOR),
              label: '장바구니',
            ),
            BottomNavigationBarItem(
              icon: controller.selectedIndex.value == 2
                  ? const Icon(
                      Icons.person,
                      color: PRIMARY_COLOR,
                    )
                  : const Icon(Icons.person, color: BODY_TEXT_COLOR),
              label: '프로필',
            ),
          ],
        ),
      ),
    );
  }
}
