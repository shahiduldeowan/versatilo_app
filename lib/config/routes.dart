import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/constants/route_constants.dart';
import '../core/di/dependencies_setup.dart' show getIt;
import '../features/entry/presentation/cubit/tab_navigation_cubit.dart';
import '../features/entry/presentation/pages/entry_page.dart';
import '../features/welcome/presentation/bloc/package_info/package_info_cubit.dart';
import '../features/welcome/presentation/bloc/welcome/welcome_cubit.dart';
import '../features/welcome/presentation/pages/welcome_page.dart';

class AppRouter {
  const AppRouter();

  Route? onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      RouteConstants.welcomePage => _route(
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (welcomeContext) {
                  return getIt<WelcomeCubit>()..initState();
                },
              ),
              BlocProvider(
                lazy: false,
                create: (welcomeContext) {
                  return getIt<PackageInfoCubit>()..getPackageInfo();
                },
              ),
            ],
            child: const WelcomePage(),
          ),
        ),
      RouteConstants.entryPage => _route(
          BlocProvider(
            create: (tabNavigationContext) => getIt<TabNavigationCubit>(),
            child: const EntryPage(),
          ),
        ),
      _ => null,
    };
  }

  Route _route(Widget page) => MaterialPageRoute(builder: (_) => page);
}
