import 'package:flutter/material.dart';

import '../../data/source/popular_service.dart';
import 'popular_item.dart';

class PopularSectionWidget extends StatelessWidget {
  const PopularSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...popularItems.map((item) {
            return PopularItemWidget(popularItem: item);
          }),
        ],
      ),
    );
  }
}
