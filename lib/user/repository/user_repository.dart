import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../restaurant/model/basket_item_model.dart';
import '../model/patch_basket_body.dart';
import '../model/user_model.dart';

part 'user_repository.g.dart';

// http://$ip/user/me
@RestApi()
abstract class UserRepository {
  factory UserRepository(Dio dio, {String baseUrl}) = _UserRepository;

  @GET('/')
  @Headers({
    'accessToken': 'true',
  })
  Future<UserModel> getMe();

//장바구니
  @GET('/basket')
  @Headers({
    'accessToken': 'true',
  })
  Future<List<BasketItemModel>> getBasket();

  @PATCH('/basket')
  @Headers({
    'accessToken': 'true',
  })
  Future<List<BasketItemModel>> patchBasket({
    @Body() required PatchBasketBody body,
  });
}
