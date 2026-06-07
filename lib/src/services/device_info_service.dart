import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

import '../utils/utils.dart';

/// A service to retrieve detailed information about the current device.
class DeviceInfoService {
  DeviceInfoService._();
  static final DeviceInfoService instance = DeviceInfoService._();

  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  /// Flat payload for POST /auth/register-device (1:1 with Postgres columns).
  FutureEither<Map<String, dynamic>> getRegisterDevicePayload() async {
    return runTask(() async {
      if (Platform.isAndroid) {
        final androidInfo = await _deviceInfo.androidInfo;
        const platform = 'android';
        final model = androidInfo.model;
        return _payload(
          platform: platform,
          id: androidInfo.id,
          model: model,
          osVersion: androidInfo.version.release,
          deviceName: _generatedDeviceName(platform, model: model),
          systemName: platform,
          isPhysicalDevice: androidInfo.isPhysicalDevice,
        );
      } else if (Platform.isIOS) {
        final iosInfo = await _deviceInfo.iosInfo;
        const platform = 'ios';
        final model = iosInfo.model;
        return _payload(
          platform: platform,
          id: iosInfo.identifierForVendor ?? iosInfo.model,
          model: model,
          osVersion: iosInfo.systemVersion,
          deviceName: _deviceName(
            platform,
            nativeName: iosInfo.name,
            model: model,
          ),
          systemName: _systemName(platform, iosInfo.systemName),
          isPhysicalDevice: iosInfo.isPhysicalDevice,
        );
      } else if (Platform.isMacOS) {
        final macInfo = await _deviceInfo.macOsInfo;
        const platform = 'macos';
        final model = macInfo.model;
        return _payload(
          platform: platform,
          id: macInfo.systemGUID ?? model,
          model: model,
          osVersion: macInfo.osRelease,
          deviceName: _deviceName(
            platform,
            nativeName: macInfo.computerName,
            model: model,
          ),
          systemName: platform,
          isPhysicalDevice: true,
        );
      } else if (Platform.isWindows) {
        final winInfo = await _deviceInfo.windowsInfo;
        const platform = 'windows';
        final model = winInfo.computerName;
        return _payload(
          platform: platform,
          id: winInfo.deviceId,
          model: model,
          osVersion: winInfo.displayVersion,
          deviceName: _deviceName(
            platform,
            nativeName: winInfo.computerName,
            model: model,
          ),
          systemName: platform,
          isPhysicalDevice: true,
        );
      }

      const platform = 'unknown';
      return _payload(
        platform: platform,
        id: 'unknown',
        model: null,
        osVersion: null,
        deviceName: _generatedDeviceName(platform),
        systemName: platform,
        isPhysicalDevice: false,
      );
    });
  }

  Map<String, dynamic> _payload({
    required String platform,
    required String id,
    required String? model,
    required String? osVersion,
    required String deviceName,
    required String systemName,
    required bool isPhysicalDevice,
  }) {
    return {
      'platform': platform,
      'id': id,
      'model': model,
      'os_version': osVersion,
      'device_name': deviceName,
      'system_name': systemName,
      'is_physical_device': isPhysicalDevice,
    };
  }

  String _systemName(String platform, String? nativeName) {
    if (nativeName != null && nativeName.isNotEmpty) return nativeName;
    return platform;
  }

  String _deviceName(
    String platform, {
    String? nativeName,
    String? model,
  }) {
    if (nativeName != null && nativeName.isNotEmpty) return nativeName;
    return _generatedDeviceName(platform, model: model);
  }

  String _generatedDeviceName(String platform, {String? model}) {
    if (model != null && model.isNotEmpty) return '$model POS';
    final label = platform.isNotEmpty
        ? '${platform[0].toUpperCase()}${platform.substring(1)}'
        : 'Device';
    return '$label POS';
  }
}
