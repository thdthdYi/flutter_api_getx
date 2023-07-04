import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_project_getx/common/view/root_tab.dart';
import 'package:flutter_api_project_getx/restaurant/controller/restaurant_controller.dart';

import 'package:get/get.dart';

import '../../common/component/data.dart';

import '../../common/utils/data_utils.dart';

import '../model/login_response.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find<LoginController>();

  final baseUrl = 'http://$ip/auth';

  final dio = Dio();

  late String accessToken;
  late String refreshToken;

  late bool isLoggedInValue;

  @override
  void onInit() {
    super.onInit();
    checkToken();
  }

//로그인
  Future<LoginResponse> login(
      {required String username, required String password}) async {
    final serialized = DataUtils.plainToBase64('$username:$password');

    final resp = await dio.post('$baseUrl/login', //path에 post
        //encode된 token을 authorization에 넣어줌
        options: Options(headers: {
          'authorization': 'Basic $serialized',
        }));

    if (resp.statusCode == 201) {
      await storage.write(REFRESH_TOKEN_KEY, resp.data['refreshToken']);
      await storage.write(ACCESS_TOKEN_KEY, resp.data['accessToken']);
      refreshToken = storage.read(REFRESH_TOKEN_KEY)!;
      await checkToken();
      if (isLoggedInValue == true) {
        Get.to(() => RootTab());
      } else {
        Get.toNamed('/login');
      }
    }

    return LoginResponse.fromJson(resp.data);
  }

  //앱을 처음 시작할 때 토큰이 존재하는지 확인 후 보내줄 스크린을 확인하는 과정 - splash screen
  Future<void> checkToken() async {
    String? accessToken = storage.read(ACCESS_TOKEN_KEY);
    String? refreshToken = storage.read(REFRESH_TOKEN_KEY);
    if (accessToken != null && refreshToken != null) {
      try {
// ignore: use_build_context_synchronously

        //refresh token을 이용해 access token을 발급받을 수 있음.
        //로그인 시 refresh token 발급 - refresh token을 이용해 만료된 access token 발급
        //access token을 이용해 api 정보 접근
        // ignore: unused_local_variable
        final resp = await dio.post('http://$ip/auth/token',
            options:
                Options(headers: {'authorization': 'Bearer $refreshToken'}));

        if (resp.statusCode == 201) {
          accessToken = storage.read(ACCESS_TOKEN_KEY)!;

          await RestaurantController.to.pagenateRestaurant();

          isLoggedInValue = true;
          return;
        }
      } catch (e) {
        //에러시 로그인 화면으로 이동하여 다시 로그인함.
        // ignore: use_build_context_synchronously
        isLoggedInValue = false;
      }
    }
    // 토큰이 없거나 유효하지 않은 경우 로그인 정보 초기화
    await storage.remove(ACCESS_TOKEN_KEY);
    await storage.remove(REFRESH_TOKEN_KEY);
    isLoggedInValue = false;
  }
}

class Routes {
  static const String login = '/login';
  static const String home = '/';
  static const String splash = '/splash';
}

class AuthGuard extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (LoginController.to.isLoggedInValue == false) {
      return const RouteSettings(name: Routes.login);
    } else {
      return const RouteSettings(name: Routes.home);
    }
  }
}
