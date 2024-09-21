import 'package:flutter/material.dart';

import 'config/routes.dart';
import 'config/theme.dart';
import 'core/constants/route_constants.dart';
import 'core/constants/string_constants.dart';

class App extends StatelessWidget {
  const App({super.key, required this.router});

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    MaterialTheme theme = MaterialTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConstants.appName,
      themeMode: ThemeMode.light,
      theme: theme.light(),
      initialRoute: RouteConstants.welcomePage,
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}
