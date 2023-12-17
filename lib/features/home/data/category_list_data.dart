
import 'package:flutter/material.dart';

import '../presentation/view/widgets/category_card.dart';

class CategoryList extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      'title': 'المحتوى الديني',
      'subtitle': 'Subtitle 2',
      'image': 'assets/images/المحتوى الديني.jpeg',
    },
    {
      'title': 'التراث العربي',
      'subtitle': 'Subtitle 1',
      'image': 'assets/images/التراث .jpg',
    },
    {
      'title': 'محتوى الطفل',
      'subtitle': 'Subtitle 2',
      'image': 'assets/images/محتوى الطفل.jpg',
    },
    {
      'title': 'Category 2',
      'subtitle': 'Subtitle 2',
      'image': 'assets/images/التراث .jpg',
    },
    {
      'title': 'Category 2',
      'subtitle': 'Subtitle 2',
      'image': 'assets/images/التراث .jpg',
    },
    // Add more categories as needed
  ];

   CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            title: categories[index]['title']!,
            subtitle: categories[index]['subtitle']!,
            image: categories[index]['image']!,
          ),
        ),
      ),
    );
  }
}
