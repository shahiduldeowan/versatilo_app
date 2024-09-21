import 'dart:math' show pi;

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/constants/assets_constants.dart';
import 'three_d_widget.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 7 / 3,
      child: Center(
        child: ThreeDWidget(
          midChild: Image.asset(AssetsConstants.logo),
          midToBotChild: Shimmer.fromColors(
              baseColor: const Color(0xff73706C),
              highlightColor: const Color(0xFFD7B15B),
              child: Image.asset(AssetsConstants.logo)),
          rotationX: pi / 16,
          rotationY: pi / 15,
          layers: 11,
          depth: 12,
        ),
      ),
    );
  }
}
