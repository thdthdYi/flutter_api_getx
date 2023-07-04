import 'package:flutter_api_project_getx/common/dio/dio.dart';
import 'package:flutter_api_project_getx/common/view/root_tab.dart';
import 'package:flutter_api_project_getx/user/controller/login_controller.dart';
import 'package:flutter_api_project_getx/restaurant/repository/restaurant_repository.dart';
import 'package:flutter_api_project_getx/restaurant/view/restaurant_detail_screen.dart';
import 'package:get/get.dart';

import '../../common/component/data.dart';
import '../model/restaurant_detail_model.dart';
import '../model/restaurant_model.dart';

//restaurant_screen 호출
class RestaurantController extends GetxController {
  static RestaurantController get to => Get.find<RestaurantController>();

  final dio = LoginController.to.dio;

  late RestaurantDetailModel respDetailData;

  // ignore: prefer_typing_uninitialized_variables
  late final respData;

  // 캐시 변수
  // ignore: unused_field
  final _restaurantList = <RestaurantModel>[].obs;

  final RxList<RestaurantModel> restaurantList = <RestaurantModel>[].obs;
  final RxBool isLoading = false.obs;

  Future<void> pagenateRestaurant() async {
    try {
      isLoading.value = true;
      //interceptors를 넣지않아 paginate 작동하지 않았음.
      dio.interceptors.add(CustomInterceptor(storage: storage));

      final resp =
          await RestaurantRepository(dio, baseUrl: 'http://$ip/restaurant')
              .paginate();

      respData = resp.data;
      restaurantList.assignAll(resp.data);

      // 갱신된 데이터를 반영하기 위해 update 메서드 호출
      update();

      Get.to(() => RootTab());
    } catch (e) {
      // 에러 처리
    } finally {
      isLoading.value = false;
    }

    // final resp = await dio.get('http://$ip/restaurant',
    //     options: Options(headers: {
    //       'authorization': 'Bearer ${LoginController.to.accessToken}'
    //     }));

//API 호출 결과를 확인
  }

//상세페이지 호출
  Future<void> pagenateRestaurantDetail(String id) async {
    getCachedRestaurantList();
    dio.interceptors.add(CustomInterceptor(storage: storage));
    // final resp = await dio.get('http://$ip/restaurant/$id',
    //     options: Options(headers: {
    //       'authorization': 'Bearer ${LoginController.to.accessToken}'
    //     }));

    //API 호출 결과를 확인
    //print(resp.data);
    final resp = RestaurantRepository(dio, baseUrl: 'http://$ip/restaurant');

    respDetailData = await resp.getRestaurantDetail(id: id);

    //data받아 페이지 build , 데이터 넘겨줌
    Get.to(() => RestaurantDetailScreen(item: respDetailData));
  }

  // 캐시를 사용하여 음식점 목록을 가져오는 메서드
  Future<void> getCachedRestaurantList() async {
    if (restaurantList.isNotEmpty) {
      // 이미 캐시된 데이터가 있다면 바로 반환
      return;
    }

    // 캐시된 데이터가 없다면 API를 호출하여 데이터를 가져옴
    dio.interceptors.add(CustomInterceptor(storage: storage));

    final resp =
        await RestaurantRepository(dio, baseUrl: 'http://$ip/restaurant')
            .paginate();

    restaurantList.value = resp.data;
  }
}
