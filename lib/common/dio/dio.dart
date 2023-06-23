import 'package:dio/dio.dart';

import 'package:get_storage/get_storage.dart';

import '../component/data.dart';

class CustomInterceptor extends Interceptor {
  final GetStorage storage;
  CustomInterceptor({required this.storage});
//1.requeset

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    print('REQUEST : ${options.method} , ${options.uri} , ${options.headers}');

    if (options.headers['accessToken'] == 'true') {
      //delete header
      options.headers.remove('acceessToken');

      final token = await storage.read(ACCESS_TOKEN_KEY);

      //replace header
      options.headers.addAll({
        'authorization': 'Bearer $token',
      });
    }

    if (options.headers['refreshToken'] == 'true') {
      //delete header
      options.headers.remove('refreshToken');

      final token = await storage.read(REFRESH_TOKEN_KEY);

      //replace header
      options.headers.addAll({
        'authorization': 'Bearer $token',
      });
    }
    return super.onRequest(options, handler);
  }

//2.response
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        '[RES]] [${response.requestOptions.method}] ${response.requestOptions.uri}');

    return super.onResponse(response, handler);
  }

//3.error
  @override
  void onError(err, ErrorInterceptorHandler handler) async {
    print('[ERR] [${err.requestOptions.method}] ${err.requestOptions.uri}');

    final refreshToken = await storage.read(REFRESH_TOKEN_KEY);

    if (refreshToken == null) {
      return handler.reject(err);
    }

    //해당 서버에서 토큰이 잘 못 됐다는 에러 상태.
    final isStatus401 = err.response?.statusCode == 401; //에러코드 확인
    final isPathRefresh =
        err.requestOptions.path == 'auth/token'; //refresh token err인지 확인
    //refresh token 자체에 문제가 있음.

    //토큰 재발급 시도
    if (isStatus401 && isPathRefresh) {
      final dio = Dio();
      try {
        final resp = await dio.post('http://$ip/auth/token',
            options:
                Options(headers: {'authorization': 'Bearer $refreshToken'}));
        final accessToken = resp.data['accessToken'];

        final options = err.requestOptions;

        //토큰 변경
        options.headers.addAll({
          'authorization': 'Bearer $accessToken',
        });

        await storage.write(ACCESS_TOKEN_KEY, accessToken);

        //요청재전송
        final response = await dio.fetch(options);

        //새로 보낸 요청에 대한 응답
        return handler.resolve(response);
      }

      //refresh token을 할 수 없음
      on DioError catch (e) {
        return handler.reject(e); //그대로 에러 반환
      }
    }

    return handler.reject(err);
  }
}
