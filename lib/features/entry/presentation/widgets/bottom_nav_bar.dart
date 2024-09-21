import 'package:flutter/material.dart';
import 'package:rive/rive.dart' show Artboard;

import '../../data/source/bottom_nav_item_service.dart';
import 'bottom_nav_bar_item.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget(
      {super.key, required this.onTap, required this.onInit});

  final Function(int) onTap;
  final Function(Artboard, String) onInit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFB17914),
              Color(0xFFCE9E43),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 10),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            bottomNavItems.length,
            (index) {
              return BottomNavBarItemWidget(
                riveIcon: bottomNavItems[index].rive,
                index: index,
                title: bottomNavItems[index].title,
                onTap: onTap,
                onInit: onInit,
              );
            },
          ),
        ),
      ),
    );
  }
}
