/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2024-07-17 19:26:12
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2024-07-17 19:26:35
 * @FilePath: /iasc/lib/utils/routes.dart
 * 
 * Copyright (c) 2024 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:iasc/bindings/splash.dart';
import 'package:iasc/pages/splash/index.dart';
import 'package:iasc/utils/getx.dart';

class AppRoutes {
  /// 启动页
  static const String splash = '/splash';

  static List<GetPage> pages = [
    GetPage(
      name: splash,
      binding: SplashBinding(),
      page: () => const SplashPage(),
    ),
  ];
}
