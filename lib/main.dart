import 'package:flutter/material.dart';
import 'package:flutter_api_project_getx/common/component/data.dart';
import 'package:flutter_api_project_getx/common/view/root_tab.dart';
import 'package:flutter_api_project_getx/restaurant/controller/basket_controller.dart';
import 'package:flutter_api_project_getx/restaurant/view/basket_screen.dart';
import 'package:flutter_api_project_getx/user/screen/login_screen.dart';
import 'package:flutter_api_project_getx/user/screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'user/controller/login_controller.dart';
import 'user/controller/pagination_controller.dart';
import 'user/controller/root_tab_controller.dart';

void main() async {
  await GetStorage.init(); //storage 초기화

  Get.put(LoginController());

  Get.put(BottomTabsController());
  Get.put(PaginationController());
  Get.put(BasketController());

  await LoginController.to.checkToken();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter login',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      getPages: [
        GetPage(
            name: '/splash',
            page: () => SplashScreen(),
            middlewares: [AuthGuard()]),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/', page: () => RootTab()),
        GetPage(name: '/basket', page: () => BasketScreen()),
      ],
    );
  }
}
