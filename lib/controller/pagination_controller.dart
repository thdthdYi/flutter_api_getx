import 'package:dio/dio.dart';
import 'package:flutter_api_project_getx/controller/login_controller.dart';
import 'package:flutter_api_project_getx/restaurant/view/restaurant_detail_screen.dart';
import 'package:get/get.dart';

import '../common/component/data.dart';
import '../restaurant/model/restaurant_detail_model.dart';

//restaurant_screen 호출
class PaginationController extends GetxController {
  static PaginationController get to => Get.find<PaginationController>();

  final dio = LoginController.to.dio;

  late final respData;

  late Map<String, dynamic> respDetailData;

  Future<void> pagenateRestaurant() async {
    final resp = await dio.get('http://$ip/restaurant',
        options: Options(headers: {
          'authorization': 'Bearer ${LoginController.to.accessToken}'
        }));

//API 호출 결과를 확인
    respData = resp.data['data'];
  }

//상세페이지 호출
  Future<void> pagenateRestaurantDetail(String id) async {
    final resp = await dio.get('http://$ip/restaurant/$id',
        options: Options(headers: {
          'authorization': 'Bearer ${LoginController.to.accessToken}'
        }));

    //API 호출 결과를 확인
    //print(resp.data);
    respDetailData = resp.data;
    //data받아 페이지 build , 데이터 넘겨줌
    Get.to(() => RestaurantDetailScreen(item: respDetailData));
  }
}
