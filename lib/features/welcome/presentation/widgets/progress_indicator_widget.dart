import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.2),
      child: SizedBox(
        width: size.width * 0.25,
        child: const LinearProgressIndicator(),
      ),
    );
  }
}
