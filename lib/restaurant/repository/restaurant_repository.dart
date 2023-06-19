import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_api_project_getx/controller/login_controller.dart';
import 'package:flutter_api_project_getx/restaurant/model/restaurant_detail_model.dart';
import 'package:flutter_api_project_getx/restaurant/model/restaurant_model.dart';
import 'package:retrofit/retrofit.dart';

part 'restaurant_repository.g.dart';

//retrofit을 사용하는 이유

//restaurant screen과 restaurant detail screen을 보면
//주소에 id가 추가되는 것과 받는 데이터의 형식만 다를 뿐
//resp를 받아오는 과정과 resp데이터를 .fromJson으로 변환하는 것까지 똑같기 때문에
//반복되는 과정을 간소화하기 위함

@RestApi()
abstract class RestaurantRepository {
  factory RestaurantRepository(Dio dio, {String baseUrl}) =
      _RestaurantRepository;

  @GET('/')
  @Headers({
    'accessToken': 'true',
  })
  //Future<List<RestaurantModel>> paginate();

  @GET('/{id}')
  @Headers({
    'accessToken': 'true',
  })
  Future<RestaurantDetailModel> getRestaurantDetail({
    @Path() required String id,
  });
}
