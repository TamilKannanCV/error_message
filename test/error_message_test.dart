import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:error_message/error_message.dart';

void main() {
  const MethodChannel channel = MethodChannel('error_message');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ErrorMessage.platformVersion, '42');
  });
}
