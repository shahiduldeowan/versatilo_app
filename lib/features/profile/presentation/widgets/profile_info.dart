import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatelessWidget {
  final String username;
  final String email;
  final String bio;

  const ProfileInfoWidget({
    super.key,
    required this.username,
    required this.email,
    required this.bio,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          username,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(email),
        Text(bio),
      ],
    );
  }
}
