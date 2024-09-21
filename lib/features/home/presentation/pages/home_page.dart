import 'package:flutter/material.dart';

import '../widget/categories.dart';
import '../widget/feature_section.dart';
import '../widget/header.dart';
import '../widget/popular_section.dart';
import '../widget/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Column(
            children: [
              HeaderWidget(),
              SizedBox(height: 16),
              SearchBarWidget(),
              SizedBox(height: 16),
              CategoriesWidget(),
              SizedBox(height: 16),
              FeaturedSectionWidget(),
              SizedBox(height: 16),
              PopularSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
