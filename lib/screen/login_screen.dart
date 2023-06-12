import 'package:flutter/material.dart';
import 'package:flutter_api_project_getx/screen/customtextfield.dart';

import '../component/color.dart';
import '../layout/defaultlayout.dart';

class LoginScreen extends StatelessWidget {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    //storage open > 프로그램 빌드할 때마다 로그인이 풀리는 것을 방지

    return DefaultLayout(
      //키보드가 올라왔을 때 뒤 기본 스크린을 스크롤 가능
      child: SingleChildScrollView(
        //drag로 키보드 숨기기 가능
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const _Title(),
                const SizedBox(
                  height: 16.0,
                ),
                const _SubTitle(),
                Image.asset(
                  'asset/img/misc/logo.png',
                  width: MediaQuery.of(context).size.width / 3 * 2,
                ),
                CustomTextFormField(
                  hinttext: '이메일을 입력해주세요.',
                  onChanged: (String value) {
                    username = value;
                  },
                ),
                const SizedBox(
                  height: 8.0,
                ),
                CustomTextFormField(
                  hinttext: '비밀번호을 입력해주세요.',
                  onChanged: (String value) {
                    password = value;
                  },
                  obscureText: true,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('로그인'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PRIMARY_COLOR,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "환영합니다!",
      style: TextStyle(
          fontSize: 34.0, fontWeight: FontWeight.w500, color: Colors.black),
    );
  }
}

class _SubTitle extends StatelessWidget {
  const _SubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "이메일과 비밀번호를 입력해서 로그인해주세요! \n오늘도 성공적인 주문이 되길 :)",
      style: TextStyle(fontSize: 16.0, color: BODY_TEXT_COLOR),
    );
  }
}
