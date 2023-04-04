import 'package:flutter/services.dart';

class ScreenUtils {
  static Future<void> removeSystemBars() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive,
        overlays: []);
  }
}
