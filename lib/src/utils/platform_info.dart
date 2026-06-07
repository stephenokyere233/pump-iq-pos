import 'package:flutter/foundation.dart';

class PlatformInfo {
  static bool get isWeb => kIsWeb;
  static bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
  static bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;

  static bool get isMobile => isAndroid || isIOS;
}
