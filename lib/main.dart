/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2024-07-11 21:07:59
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2024-07-17 19:36:26
 * @FilePath: /iasc/lib/main.dart
 * 
 * Copyright (c) 2024 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iasc/utils/routes.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  Size minSize = const Size(1036, 687);
  WindowOptions windowOptions = WindowOptions(
    size: minSize,
    minimumSize: minSize,
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'iasc',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.splash,
      popGesture: true,
      theme: ThemeData(
        platform: TargetPlatform.macOS,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
    );
  }
}
