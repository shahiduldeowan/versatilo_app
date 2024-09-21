import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart' show Artboard, RiveAnimation;

import '../../data/models/rive_model.dart';
import '../cubit/tab_navigation_cubit.dart';
import 'animated_bar.dart';

class BottomNavBarItemWidget extends StatelessWidget {
  const BottomNavBarItemWidget({
    super.key,
    required this.riveIcon,
    required this.onTap,
    required this.onInit,
    required this.index,
    required this.title,
  });

  final RiveModel riveIcon;
  final Function(int) onTap;
  final Function(Artboard, String) onInit;
  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: title,
      child: GestureDetector(
        onTap: () => onTap(index),
        child: BlocBuilder<TabNavigationCubit, TabNavigationState>(
          builder: (context, state) {
            int selectedNavIndex = (state as TabSelected).index ?? 0;
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedBar(isActive: selectedNavIndex == index),
                SizedBox(
                  height: 36,
                  width: 36,
                  child: Opacity(
                    opacity: selectedNavIndex == index ? 1 : 0.5,
                    child: RiveAnimation.asset(
                      // Use 'rive' prefix
                      riveIcon.src,
                      artboard: riveIcon.artboard,
                      onInit: (artboard) => onInit(
                        artboard,
                        riveIcon.stateMachineName,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
