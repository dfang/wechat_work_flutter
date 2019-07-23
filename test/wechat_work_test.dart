import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wechat_work/wechat_work.dart';

void main() {
  const MethodChannel channel = MethodChannel('wechat_work');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await WechatWork.platformVersion, '42');
  });
}
