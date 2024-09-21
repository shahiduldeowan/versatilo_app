import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart' as rive;

import '../../../home/presentation/pages/home_page.dart';
import '../../../notification/presentation/pages/notification_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import '../../../search/presentation/pages/search_page.dart';
import '../cubit/tab_navigation_cubit.dart';
import '../widgets/bottom_nav_bar.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  List<rive.SMIBool?> riveIconInputs = [];
  List<rive.StateMachineController?> controllers = [];

  final PageStorageBucket bucket = PageStorageBucket();

  List<Widget> pages = const <Widget>[
    HomePage(),
    SearchPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  // Trigger animation on icon
  void animationTheIcon(int index) {
    if (riveIconInputs[index] != null) {
      riveIconInputs[index]!.change(true);
      Future.delayed(const Duration(seconds: 1), () {
        riveIconInputs[index]!.change(false);
      });
    }
  }

  // Initialize the Rive controller
  void riveOnInIt(rive.Artboard artboard, {required String stateMachineName}) {
    rive.StateMachineController? controller =
        rive.StateMachineController.fromArtboard(artboard, stateMachineName);

    if (controller != null) {
      artboard.addController(controller);
      controllers.add(controller);

      // Find the 'active' input, if it exists
      rive.SMIBool? input =
          controller.findInput<bool>('active') as rive.SMIBool?;
      riveIconInputs.add(input);
    } else {
      riveIconInputs.add(null);
    }
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        _exitDialog(context);
      },
      child: Scaffold(
        body: BlocBuilder<TabNavigationCubit, TabNavigationState>(
          builder: (context, state) {
            return PageStorage(
              bucket: bucket,
              child: IndexedStack(
                index: state.index,
                children: pages,
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavBarWidget(
          onTap: (index) {
            context.read<TabNavigationCubit>().onTabSelected(index);
            animationTheIcon(index);
          },
          onInit: (artboard, stateMachineName) {
            riveOnInIt(
              artboard,
              stateMachineName: stateMachineName,
            );
          },
        ),
      ),
    );
  }

  Future _exitDialog(BuildContext context) async {
    bool shouldExit = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('Are you sure you want to exit?'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('No'),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Yes'),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        );
      },
    );

    if (shouldExit == true) {
      if (Platform.isAndroid) {
        SystemNavigator.pop();
      } else if (Platform.isIOS) {
        exit(0);
      }
    }
  }
}
