import 'package:flutter/material.dart';
import 'package:flutter_api_project_getx/common/view/root_tab.dart';
import 'package:flutter_api_project_getx/screen/login_screen.dart';
import 'package:flutter_api_project_getx/screen/splash_screen.dart';
import 'package:get/get.dart';

import 'controller/login_controller.dart';
import 'controller/pagination_controller.dart';
import 'controller/root_tab_controller.dart';

void main() {
  Get.put(LoginController());
  Get.put(BottomTabsController());
  Get.put(PaginationController());

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
      ],
    );
  }
}
