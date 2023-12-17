import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hakawaty/const.dart';

import 'content_items.dart';
import 'content_title.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ContentTitle(),
          const Gap(15),
          const ContentItems(),
          const Gap(25),
          StoryItem(
            screenH: screenH,
            screenW: screenW,
            storyCover: 'assets/images/stories.jpg',
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            height: 3,
            color: kSecondaryColor,
          ),
          StoryItem(
              screenH: screenH,
              screenW: screenW,
              storyCover: 'assets/images/story1.jpg')
        ],
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.screenH,
    required this.screenW,
    required this.storyCover,
  });

  final double screenH;
  final double screenW;
  final String storyCover;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StoryDetails(screenH: screenH, screenW: screenW),
        StoryCover(screenH: screenH, storyCover: storyCover),
      ],
    );
  }
}

class StoryDetails extends StatelessWidget {
  const StoryDetails({
    super.key,
    required this.screenH,
    required this.screenW,
  });

  final double screenH;
  final double screenW;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenH * 0.3,
      width: screenW - (2.5 * (screenH * 0.3) / 4) - 2 * kHorizontalPadding,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Story Name',
            style: TextStyle(
                fontSize: 18, color: kDarkColor, fontWeight: FontWeight.w600),
          ),
          Text(
            'Author Name',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16, color: kDarkColor, fontWeight: FontWeight.w600),
          ),
          Text(
            'Loves : 10',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'Seen : 526',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16, color: kDarkColor, fontWeight: FontWeight.w600),
          ),
          Text(
            'Price : \$14.99',
            style: TextStyle(
                fontSize: 16, color: kDarkColor, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class StoryCover extends StatelessWidget {
  const StoryCover({
    super.key,
    required this.screenH,
    required this.storyCover,
  });

  final double screenH;
  final String storyCover;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: screenH * 0.3,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(storyCover),
                ),
              ),
            ),
          ),
        ),
        // IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_sharp, size: 28, color: Colors.red,))
      ],
    );
  }
}
