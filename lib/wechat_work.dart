import 'dart:async';

import 'package:flutter/services.dart';

class WechatWork {
  static const MethodChannel _channel =
      const MethodChannel('wechat_work');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
