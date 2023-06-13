import 'package:flutter/material.dart';
import 'package:flutter_api_project_getx/screen/login_screen.dart';
import 'package:get/get.dart';

import 'controller/root_tab_controller.dart';

void main() {
  Get.put(BottomTabsController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter login',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
