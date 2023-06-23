import 'package:flutter/material.dart';
import 'package:flutter_api_project_getx/common/view/root_tab.dart';
import 'package:flutter_api_project_getx/user/screen/login_screen.dart';
import 'package:flutter_api_project_getx/user/screen/splash_screen.dart';
import 'package:get/get.dart';

class GetXRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/splash',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
        ),
        GetPage(
          name: '/',
          page: () => RootTab(),
        ),
      ],
    );
  }
}
