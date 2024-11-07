import 'package:boilerplate/bootstrap.dart';
import 'package:boilerplate/configs/app_config.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  await bootstrap(
    firebaseInitialization: () async {},
    flavorConfiguration: () async {
      AppConfig.configDev();
    },
  );
}
