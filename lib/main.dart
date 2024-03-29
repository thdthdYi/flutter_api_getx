import 'package:flutter/material.dart';

import 'package:flutter_api_project_getx/common/view/root_tab.dart';
import 'package:flutter_api_project_getx/restaurant/controller/basket_controller.dart';
import 'package:flutter_api_project_getx/restaurant/view/basket_screen.dart';
import 'package:flutter_api_project_getx/user/screen/login_screen.dart';
import 'package:flutter_api_project_getx/user/screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'order/controller/order_controller.dart';
import 'user/controller/login_controller.dart';
import 'restaurant/controller/restaurant_controller.dart';
import 'user/controller/root_tab_controller.dart';

void main() async {
  await GetStorage.init(); //storage 초기화

  Get.put(LoginController());

  Get.put(BottomTabsController());
  Get.put(RestaurantController());
  Get.put(BasketController());
  Get.put(OrderController());

  await LoginController.to.checkToken();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter login',
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      getPages: [
        GetPage(
            name: '/splash',
            page: () => const SplashScreen(),
            middlewares: [AuthGuard()]),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/', page: () => RootTab()),
        GetPage(name: '/basket', page: () => const BasketScreen()),
      ],
    );
  }
}
