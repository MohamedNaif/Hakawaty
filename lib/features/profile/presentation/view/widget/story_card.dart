

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../const.dart';

class StoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const StoryCard({super.key, required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          'Author',
          style: TextStyle(fontWeight: FontWeight.bold, color: kThirdAltColor),
        ),
      ),
      contentPadding: const EdgeInsets.all(8.0),
      leading: Container(
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontSize: 18,
                ),
              ),
              const Gap(4),
              // SizedBox(height: 4.0),
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w200,
                  color: kDarkColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
