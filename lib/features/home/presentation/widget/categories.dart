import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryItemWidget('All'),
          CategoryItemWidget('Fashion'),
          CategoryItemWidget('Electronics'),
          CategoryItemWidget('Home'),
        ],
      ),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  final String title;

  const CategoryItemWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(title),
      backgroundColor: Colors.grey[200],
    );
  }
}
