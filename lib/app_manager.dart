import 'dart:typed_data';
import 'package:flutter/services.dart';

class App {
  final String name;
  final Uint8List icon;

  App({required this.name, required this.icon});
}

class AppManager {
  static const platform = MethodChannel('com.example.app/packagemanager');

  static Future<List<App>> getInstalledApps() async {
    final List<Object?> apps = await platform.invokeMethod('getInstalledApps');

    List<Map<String, dynamic>> typedList = apps
        .map((e) => (e as Map<Object?, Object?>).cast<String, dynamic>())
        .toList();

    // print(apps);
    return typedList.map((app) {
      print(app);
      return App(
        name: app['name'],
        icon: app['icon'],
      );
    }).toList();
  }
}
