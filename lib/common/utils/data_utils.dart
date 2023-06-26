import 'dart:convert';

import '../component/data.dart';

class DataUtils {
  //token encode
  static String plainToBase64(String plain) {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);

    String encoded = stringToBase64.encode(plain);

    return encoded;
  }

  static String pathToUrl(String value) {
    return 'http://$ip$value';
  }

  static DateTime stringToDateTime(String value) {
    return DateTime.parse(value);
  }
}
