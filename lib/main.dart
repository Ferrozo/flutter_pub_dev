import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_package/src/app.dart';
import 'package:flutter_package/src/application/settings/config_view_model.dart';
import 'package:flutter_package/src/domain/core/navigation/navigation_service.dart';
import 'package:flutter_package/src/infrastructure/core/network_builder.dart';
import 'package:flutter_package/src/injection/injection_config.dart';
import 'package:flutter_package/src/l18n.dart';
import 'package:flutter_package/src/presentation/settings/config_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'router.dart';

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var shared = await SharedPreferences.getInstance();

  final network = NetworkBuilder();

  InjectorConfig.initialize(dio: network.build(), preferences: shared);

  await inject<ConfigViewModel>().initialize();

  runApp(App());
}


