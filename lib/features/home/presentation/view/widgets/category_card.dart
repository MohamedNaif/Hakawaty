
import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

import '../../../../../const.dart';
import '../../../../category/presentation/views/category_view.dart';
class CategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const CategoryCard(
      {super.key, required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CategoryView()),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: kDarkColor,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                  fontWeight: FontWeight.w100, color: kDarkColor),
            ),
          ],
        ),
      ],
    );
  }
}