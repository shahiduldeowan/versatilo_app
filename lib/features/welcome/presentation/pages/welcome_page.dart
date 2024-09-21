import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/route_constants.dart';
import '../../../../core/utils/navigator_context.dart';
import '../bloc/welcome/welcome_cubit.dart';
import '../widgets/logo_widget.dart';
import '../widgets/progress_indicator_widget.dart';
import '../widgets/version_number_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<WelcomeCubit, WelcomeState>(
      listener: _welcomeCubitListener,
      child: Scaffold(
        appBar: AppBar(),
        body: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              LogoWidget(),
              Spacer(),
              ProgressIndicatorWidget(),
              VersionNumberWidget(),
            ],
          ),
        ),
      ),
    );
  }

  void _welcomeCubitListener(BuildContext context, WelcomeState state) {
    if (state is WelcomePageToHomePage) {
      context.pushReplacementNamed(RouteConstants.entryPage);
    }
  }
}
