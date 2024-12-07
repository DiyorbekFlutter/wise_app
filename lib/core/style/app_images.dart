import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
abstract class AppImages {
  static const String avatar1 = "assets/images/avatars/1.png";
  static const String avatar2 = "assets/images/avatars/2.png";
  static const String avatar3 = "assets/images/avatars/3.png";
  static const String avatar4 = "assets/images/avatars/4.png";
  static const String avatar5 = "assets/images/avatars/5.png";
  static const String avatar6 = "assets/images/avatars/6.png";
  static const String avatar7 = "assets/images/avatars/7.png";
  static const String avatar8 = "assets/images/avatars/8.png";
  static const String avatar9 = "assets/images/avatars/9.png";
  static const String avatar10 = "assets/images/avatars/10.png";
  static const String avatar11 = "assets/images/avatars/11.png";
  static const String avatar12 = "assets/images/avatars/12.png";
  static const String avatar13 = "assets/images/avatars/13.png";
  static const String avatar14 = "assets/images/avatars/14.png";
  static const String avatar15 = "assets/images/avatars/15.png";
  static const String avatar16 = "assets/images/avatars/16.png";
  static const String avatar17 = "assets/images/avatars/17.png";
  static const String avatar18 = "assets/images/avatars/18.png";
  static const String avatar19 = "assets/images/avatars/19.png";
  static const String avatar20 = "assets/images/avatars/20.png";
  static const String avatar21 = "assets/images/avatars/21.png";
  static const String avatar22 = "assets/images/avatars/22.png";
  static const String avatar23 = "assets/images/avatars/23.png";
  static const String avatar24 = "assets/images/avatars/24.png";
  static const String avatar25 = "assets/images/avatars/25.png";
  static const String avatar26 = "assets/images/avatars/26.png";
  static const String avatar27 = "assets/images/avatars/27.png";
  static const String avatar28 = "assets/images/avatars/28.png";
  static const String avatar29 = "assets/images/avatars/29.png";
  static const String avatar30 = "assets/images/avatars/30.png";

  static const String calendar = "assets/images/illustrations/calendar.png";
  static const String convert = "assets/images/illustrations/convert.png";
  static const String cookie = "assets/images/illustrations/cookie.png";
  static const String globe = "assets/images/illustrations/globe.png";
  static const String graph = "assets/images/illustrations/graph.png";
  static const String heart = "assets/images/illustrations/heart.png";
  static const String jars = "assets/images/illustrations/jars.png";
  static const String megaphone = "assets/images/illustrations/megaphone.png";
  static const String multiCurrency = "assets/images/illustrations/multi-currency.png";
  static const String plane = "assets/images/illustrations/plane.png";
  static const String receive = "assets/images/illustrations/receive.png";
  static const String wiseCard = "assets/images/illustrations/wise-card.png";
  static const String splashImage = "assets/images/splash_image.png";

  static const String fastFlag = "assets/images/logo/fast-flag.png";
  static const String fastFlag1 = "assets/images/logo/fast-flag-1.png";
  static const String fastFlag2 = "assets/images/logo/fast-flag-2.png";
  static const String wordMark = "assets/images/logo/wordmark.png";
  static const String wordMark1 = "assets/images/logo/wordmark-1.png";
  static const String wordMark2 = "assets/images/logo/wordmark-2.png";
}

void assetsPrintImages() async {
  String toLowerCamelCase(String snakeCase, [String? separate]) {
    return "${snakeCase[0]}${snakeCase.split(separate ?? "_")
        .map((word) => word.isNotEmpty
        ? "${word[0].toUpperCase()}${word.substring(1)}"
        : "")
        .join().substring(1)}";
  }

  String result = "";

  final manifestContent = await rootBundle.loadString('AssetManifest.json');
  final Map<String, dynamic> manifestMap = json.decode(manifestContent);

  final iconPaths = manifestMap.keys
      .where((String key) => key.startsWith("assets/images/"))
      .toList();

  for (var path in iconPaths) {
    String name = toLowerCamelCase(path.split("/").last.split(".").first);
    name = toLowerCamelCase(name, "-");
    String filePath = path;
    result += "\nstatic const String $name = \"$filePath\";";
  }

  log(result);
}
