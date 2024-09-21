import 'package:flutter/material.dart';

import '../../data/source/feature_service.dart';
import 'featured_item.dart';

class FeaturedSectionWidget extends StatelessWidget {
  const FeaturedSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Featured',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...features.map((feature) {
            return FeaturedItemWidget(
              feature: feature,
            );
          }),
        ],
      ),
    );
  }
}
