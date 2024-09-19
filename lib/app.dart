import 'package:flutter/material.dart';
import 'package:versatilo_app/config/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialTheme theme = MaterialTheme();
    return MaterialApp(
      title: 'Versatilo App',
      themeMode: ThemeMode.light,
      theme: theme.light(),
    );
  }
}
