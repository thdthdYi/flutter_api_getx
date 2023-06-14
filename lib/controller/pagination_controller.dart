import 'package:dio/dio.dart';
import 'package:flutter_api_project_getx/controller/login_controller.dart';
import 'package:get/get.dart';

import '../common/component/data.dart';

class PaginationController extends GetxController {
  static PaginationController get to => Get.find<PaginationController>();

  final dio = LoginController.to.dio;

  List respData = [];

  Future<void> pagenateRestaurant() async {
    final resp = await dio.get('http://$ip/restaurant',
        options: Options(headers: {
          'authorization': 'Bearer ${LoginController.to.accessToken}'
        }));

//API 호출 결과를 확인
    respData = resp.data['data'];
  }
}
