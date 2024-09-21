import 'package:flutter/material.dart';

class ProfileActionsWidget extends StatelessWidget {
  const ProfileActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Edit Profile'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Change Password'),
        ),
      ],
    );
  }
}
