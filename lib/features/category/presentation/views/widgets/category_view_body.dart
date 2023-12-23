import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hakawaty/const.dart';

import 'content_items.dart';
import 'content_title.dart';
import 'story_item.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContentTitle(),
          Gap(15),
          ContentItems(),
          Gap(25),
          StoryItem(
            storyCover: 'assets/images/stories.jpg',
          ),
          BorderLine(),
          StoryItem(storyCover: 'assets/images/story1.jpg')
        ],
      ),
    );
  }
}

class BorderLine extends StatelessWidget {
  const BorderLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      height: 3,
      color: kSecondaryColor,
    );
  }
}
