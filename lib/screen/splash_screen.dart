import 'package:flutter/material.dart';
import 'package:flutter_api_project_getx/controller/login_controller.dart';

import '../common/component/color.dart';
import '../common/layout/defaultlayout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      LoginController.to.checkToken();
    });
    LoginController.to.checkToken();
    return DefaultLayout(
        backgroundColor: PRIMARY_COLOR,
        child: SizedBox(
          //넓이 최대 > 가운데 정렬
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/img/logo/logo.png',
                width: MediaQuery.of(context).size.width / 2,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const CircularProgressIndicator(
                color: Colors.white,
              )
            ],
          ),
        ));
  }
}
