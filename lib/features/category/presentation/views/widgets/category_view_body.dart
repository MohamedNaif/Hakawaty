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
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ContentTitle(),
          const Gap(15),
          const ContentItems(),
          const Gap(25),
          const StoryItem(
            storyCover: 'assets/images/stories.jpg',
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            height: 3,
            color: kSecondaryColor,
          ),
          const StoryItem(storyCover: 'assets/images/story1.jpg')
        ],
      ),
    );
  }
}
