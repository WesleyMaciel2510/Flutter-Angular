
import 'package:flutter_angular/main.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:logger/logger.dart';

Future<void> requestCameraPermission() async {
    final status = await Permission.camera.request();
    if (status.isGranted) {
      logger.i('Camera permission granted');
    } else if (status.isDenied) {
      logger.i('Camera permission denied');
    } else if (status.isPermanentlyDenied) {
      logger.i('Camera permission permanently denied. Please enable it in settings.');
      // Optionally, you can open app settings
      await openAppSettings();
    }
  }