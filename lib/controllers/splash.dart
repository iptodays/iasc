/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2024-07-17 19:24:42
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2024-07-17 19:33:13
 * @FilePath: /iasc/lib/controllers/splash.dart
 * 
 * Copyright (c) 2024 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:iasc/singleton/config.dart';
import 'package:iasc/utils/getx.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    AppConfig.instance.registerPlugins();
    super.onInit();
  }
}
