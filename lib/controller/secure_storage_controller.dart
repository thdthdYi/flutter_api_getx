import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class SecureStorageController extends GetxController {
  //하나의 storage 사용 가능
  final secureStorageProvider = FlutterSecureStorage();
}
