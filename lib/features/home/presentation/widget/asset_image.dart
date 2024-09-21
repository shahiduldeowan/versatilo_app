import 'package:flutter/material.dart';

class AssetImageWidget extends StatelessWidget {
  const AssetImageWidget({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        url,
        height: 80,
        width: 80,
        fit: BoxFit.cover,
      ),
    );
  }
}
