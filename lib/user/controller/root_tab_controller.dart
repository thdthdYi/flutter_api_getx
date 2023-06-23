import 'package:get/get.dart';

class BottomTabsController extends GetxController {
  static BottomTabsController get to => Get.find();

  final RxInt selectedIndex = 0.obs;
  final RxInt selectedtabIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex(index);
  }
}
