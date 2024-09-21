import 'package:flutter/material.dart';

import '../../../../core/constants/assets_constants.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage(
        AssetsConstants.avatar,
      ),
    );
  }
}
