import 'package:flutter/material.dart';
import 'package:flutter_api_project_getx/screen/login_screen.dart';
import 'package:flutter_api_project_getx/screen/splash_screen.dart';
import 'package:get/get.dart';

void main() {
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
