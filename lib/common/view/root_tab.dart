import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/root_tab_controller.dart';
import '../../restaurant/view/restaurant_screen.dart';
import '../component/color.dart';
import '../layout/defaultlayout.dart';

class RootTab extends GetView<BottomTabsController> {
  RootTab({Key? key}) : super(key: key);

  final List<Widget> tabPages = [
    RestaurantScreen(),
    RestaurantScreen(),
    RestaurantScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Looking Restaurants',

      // ignore: sort_child_properties_last
      child: Obx(
        () => SafeArea(
            child: tabPages[BottomTabsController.to.selectedIndex.value]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: PRIMARY_COLOR,
        unselectedItemColor: BODY_TEXT_COLOR,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        onTap: controller.changeIndex,
        //현재 인덱스 저장
        currentIndex: controller.selectedIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '홈',
          ),
        ],
      ),
    );
  }
}
