import 'dart:async';

import 'package:flutter/services.dart';

class FlutterNotificationSetting {
  static const MethodChannel _channel =
      const MethodChannel('flutter_notification_setting');

  /// 打开通知设置页面
  static Future<bool> openNotificationSettingPage() async {
    final r = await _channel.invokeMethod<bool>('openNotificationSettingPage');
    return r ?? false;
  }
}
