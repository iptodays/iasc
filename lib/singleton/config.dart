/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2024-07-17 18:35:22
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2024-07-17 19:20:21
 * @FilePath: /iasc/lib/singleton/config.dart
 * 
 * Copyright (c) 2024 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppConfig {
  AppConfig._();

  static AppConfig? _instance;

  late PackageInfo _package;
  PackageInfo get package => _package;

  late MacOsDeviceInfo _macOs;
  MacOsDeviceInfo get macOs => _macOs;

  late WindowsDeviceInfo _windows;
  WindowsDeviceInfo get windows => _windows;

  static AppConfig get instance {
    _instance ??= AppConfig._();
    return _instance!;
  }

  Future<void> registerPlugins() async {
    _package = await PackageInfo.fromPlatform();
    _macOs = await DeviceInfoPlugin().macOsInfo;
    _windows = await DeviceInfoPlugin().windowsInfo;
  }
}
