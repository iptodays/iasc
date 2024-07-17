/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2024-07-17 19:25:22
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2024-07-17 19:25:53
 * @FilePath: /iasc/lib/bindings/splash.dart
 * 
 * Copyright (c) 2024 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:iasc/controllers/splash.dart';
import 'package:iasc/utils/getx.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
