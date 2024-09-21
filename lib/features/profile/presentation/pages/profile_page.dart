import 'package:flutter/material.dart';

import '../widgets/profile_actions.dart';
import '../widgets/profile_info.dart';
import '../widgets/profile_picture.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String _username = 'John Doe';
  final String _email = 'johndoe@example.com';
  final String _bio = 'Software Engineer at ABC Corporation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfilePictureWidget(),
              const SizedBox(height: 16),
              ProfileInfoWidget(
                username: _username,
                email: _email,
                bio: _bio,
              ),
              const SizedBox(height: 16),
              const ProfileActionsWidget(),
              const SizedBox(height: 26),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About me',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'A software engineer is a professional who designs, develops, tests, and maintains software applications. They use their technical skills to create software solutions that solve problems and meet user needs. Software engineers work in a variety of industries, including technology, finance, healthcare, and gaming.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
