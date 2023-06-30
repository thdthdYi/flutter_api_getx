import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/component/color.dart';
import '../../common/layout/defaultlayout.dart';
import '../../common/view/root_tab.dart';

class OrderDoneScreen extends StatelessWidget {
  const OrderDoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.thumb_up_alt_outlined,
              color: PRIMARY_COLOR,
              size: 50.0,
            ),
            const SizedBox(height: 32.0),
            const Text(
              '결제가 완료되었습니다.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Get.to(RootTab());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: PRIMARY_COLOR,
              ),
              child: const Text(
                '홈으로',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
