import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'config/routes.dart';
import 'core/di/dependencies_setup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    initializeDependencies().then((_) {
      runApp(const App(router: AppRouter()));
    });
  });
}
